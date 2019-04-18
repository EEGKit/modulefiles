-- -*- lua -*-

-- Write module load events to syslog

require("strict")
local hook   = require("Hook")
local uname  = require("posix").uname

-- By using the hook.register function, this function "load_hook" is called
-- every time a module is loaded with the file name and the module name.

function load_hook(t)
   -- the arg t is a table:
   --     t.modFullName:  the module full name: (i.e: gcc/4.7.2)
   --     t.fn:           The file name: (i.e /apps/modulefiles/Core/gcc/4.7.2.lua)

   if (mode() ~= "load") then return end
   local user  = os.getenv("USER")
   local jobid = os.getenv("SLURM_JOBID") or "none"
   local host  = uname("%n")
   local time  = epoch()
   local msg   = string.format("user=%s module=%s path=%s job=%s host=%s time=%f",
                               user, t.modFullName, t.fn, jobid, host, time)
   os.execute("logger -t nero_module_tracking -p local0.info " .. msg)
end

hook.register("load", load_hook)
