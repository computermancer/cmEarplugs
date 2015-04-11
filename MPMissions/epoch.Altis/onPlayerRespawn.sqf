//START EARPLUGS CODE
//////////////////////////////////////////////////////////////////////////
waitUntil {vehicle player == player};
waituntil {!isnull (finddisplay 46)};


//////////////////////////////////////////////////////////////////////////
		_OPRbreathing = alive player;
		_OPRtrig=true;
		_OPRdude = player;

			while {_OPRtrig} do {

				sleep 0.001;

					if (_OPRbreathing) then {
						_OPRstartingpos = position player;
						sleep 0.001;
						_OPRposition = position _OPRdude;

						_OPRstationary = _OPRstartingpos select 0 == _OPRposition select 0 && _OPRstartingpos select 1 == _OPRposition select 1;

						if (_OPRstationary) then {} else {_OPRtrig=false;};
						
					};
			};
			
//////////////////////////////////////////////////////////////////////////
5 fadeSound 1;
earplugsout=true;	
SuperFunEPEHVariable = false;
/////////////////////////////////////////////////////////////////////////
[] spawn cm_EP_LOOP;
[] spawn cm_EPEH_Loop;
//cmEARPLUGS CODE END
//////////////////////////////////////////////////////////////////////////
