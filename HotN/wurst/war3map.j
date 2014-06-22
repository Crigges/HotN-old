//===========================================================================
// 
// Noch eine WARCRAFT-III-Karte
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sat Jun 21 23:21:48 2014
//   Map Author: Unbekannt
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************

globals
    // User-defined
    real                    udg_zw                     = 0
    timer                   udg_t                      = null
    integer                 udg_MeineAbility           = 0
    unit                    udg_CasterVariable         = null
    group                   udg_UnverwundbarkeitsGruppe = null
    hashtable               udg_MeineHashtable         = null
    rect                    udg_Urspung                = null
    rect                    udg_Ziel                   = null
    real                    udg_x1                     = 0
    real                    udg_x2                     = 0
    real                    udg_x3                     = 0
    real                    udg_x4                     = 0
    real                    udg_x5                     = 0
    real                    udg_y1                     = 0
    real                    udg_y4                     = 0
    real                    udg_y5                     = 0
    real                    udg_y3                     = 0
    real                    udg_y2                     = 0
    effect                  udg_effect                 = null

    // Generated
    camerasetup             gg_cam_Camera_001          = null
    trigger                 gg_trg_Unbezeichneter_Ausl__ser_003 = null
endglobals

function InitGlobals takes nothing returns nothing
    set udg_zw = 0
    set udg_t = CreateTimer()
    set udg_UnverwundbarkeitsGruppe = CreateGroup()
    set udg_x1 = 0
    set udg_x2 = 0
    set udg_x3 = 0
    set udg_x4 = 0
    set udg_x5 = 0
    set udg_y1 = 0
    set udg_y4 = 0
    set udg_y5 = 0
    set udg_y3 = 0
    set udg_y2 = 0
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p = Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit( p, 'opeo', 2938.5, -3244.7, 172.403 )
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0(  )
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreatePlayerBuildings(  )
    call CreatePlayerUnits(  )
endfunction

//***************************************************************************
//*
//*  Cameras
//*
//***************************************************************************

function CreateCameras takes nothing returns nothing

    set gg_cam_Camera_001 = CreateCameraSetup(  )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_ZOFFSET, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_ROTATION, 90.0, 0.0 )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_ANGLE_OF_ATTACK, 270.0, 0.0 )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_TARGET_DISTANCE, 4660.0, 0.0 )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_ROLL, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_FIELD_OF_VIEW, 40.0, 0.0 )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_FARZ, 200.0, 0.0 )
    call CameraSetupSetDestPosition( gg_cam_Camera_001, -1064.0, -280.0, 0.0 )

endfunction

//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//TESH.scrollpos=0
//TESH.alwaysfold=0

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Unbezeichneter Auslöser 003
//===========================================================================
function Trig_Unbezeichneter_Ausl__ser_003_Actions takes nothing returns nothing
    call CameraSetupApplyForPlayer( true, gg_cam_Camera_001, Player(0), 0 )
    call CameraSetupApplyForPlayer( true, gg_cam_Camera_001, Player(1), 0 )
endfunction

//===========================================================================
function InitTrig_Unbezeichneter_Ausl__ser_003 takes nothing returns nothing
    set gg_trg_Unbezeichneter_Ausl__ser_003 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Unbezeichneter_Ausl__ser_003, function Trig_Unbezeichneter_Ausl__ser_003_Actions )
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Unbezeichneter_Ausl__ser_003(  )
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute( gg_trg_Unbezeichneter_Ausl__ser_003 )
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation( Player(0), 0 )
    call ForcePlayerStartLocation( Player(0), 0 )
    call SetPlayerColor( Player(0), ConvertPlayerColor(0) )
    call SetPlayerRacePreference( Player(0), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(0), false )
    call SetPlayerController( Player(0), MAP_CONTROL_USER )

    // Player 1
    call SetPlayerStartLocation( Player(1), 1 )
    call ForcePlayerStartLocation( Player(1), 1 )
    call SetPlayerColor( Player(1), ConvertPlayerColor(1) )
    call SetPlayerRacePreference( Player(1), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(1), false )
    call SetPlayerController( Player(1), MAP_CONTROL_USER )

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_002
    call SetPlayerTeam( Player(0), 0 )
    call SetPlayerTeam( Player(1), 0 )

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount( 0, 1 )
    call SetStartLocPrio( 0, 0, 1, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 1, 1 )
    call SetStartLocPrio( 1, 0, 0, MAP_LOC_PRIO_HIGH )
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds( -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM) )
    call SetDayNightModels( "Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl" )
    call NewSoundEnvironment( "Default" )
    call SetAmbientDaySound( "LordaeronSummerDay" )
    call SetAmbientNightSound( "LordaeronSummerNight" )
    call SetMapMusic( "Music", true, 0 )
    call CreateCameras(  )
    call CreateAllUnits(  )
    call InitBlizzard(  )
    call InitGlobals(  )
    call InitCustomTriggers(  )
    call RunInitializationTriggers(  )

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName( "Noch eine WARCRAFT-III-Karte" )
    call SetMapDescription( "Unbeschrieben" )
    call SetPlayers( 2 )
    call SetTeams( 2 )
    call SetGamePlacement( MAP_PLACEMENT_TEAMS_TOGETHER )

    call DefineStartLocation( 0, 768.0, -512.0 )
    call DefineStartLocation( 1, -1856.0, 192.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call InitCustomTeams(  )
    call InitAllyPriorities(  )
endfunction

