Configuration ConfigureFE1
{
  param ($MachineName)

  Node $MachineName
  {
	Script ConfigureVM { 
		
      Import-Module ServerManager 
	    Add-WindowsFeature -Name Telnet-Client -IncludeAllSubFeature -restart
            
        } 

			GetScript = { <# This must return a hash table #> }          }   
  }
} 
