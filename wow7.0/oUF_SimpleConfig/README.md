# oUF_SimpleConfig documentation

oUF_SimpleConfig is the configuration for oUF_Simple. oUF_Simple is now an mediator between oUF_SimpleConfig and oUF.
oUF_Simple provides a set of functions that can by used to spawn any defined unit with a set of defined elements.

## Init

By checking the [init.lua](https://github.com/zorker/rothui/blob/master/wow7.0/oUF_SimpleConfig/init.lua) you will find
that oUF_SimpleConfig defines the following config container and makes it globally available for oUF_Simple to access.

```lua
--config container
L.C = {}
--make the config global
oUF_SimpleConfig = L.C
```

# Global config

The global.lua has global config settings used among units and elements.

* **L.C.mediapath**: type:STRING, path to the media files
* **L.C.uiscale**: type:NUMBER, scale of UIParent. Used to offset the uiscale and make the elements on screen become exactly the described size. Can be set to 1 or any other static value if not desired.
* **L.C.backdrop**: type:TABLE, backdrop setup
* **L.C.textures**: type:TABLE, textures for statusbars and backgrounds
* **L.C.colors**: type:TABLE, Houses colors for castbar and threat that are not handled by oUF attributes. Defines the bgMultiplier.

## Units

Each unit has its own config file, like player.lua.

* **L.C.player**: type:TABLE, player frame settings
* **L.C.target**: type:TABLE, target frame settings
* **L.C.targettarget**: type:TABLE, targettarget frame settings
* **L.C.pet**: type:TABLE, pet frame settings
* **L.C.focus**: type:TABLE, focus frame settings
* **L.C.party**: type:TABLE, party frame settings
* **L.C.boss**: type:TABLE, boss frame settings
* **L.C.nameplate**: type:TABLE, nameplate frame settings
* **L.C.raid**: type:TABLE, raid frame settings

## Unit attributes

Attributes on unit level.

* **enabled**: type:BOOLEAN, enable or disable this unit frame
* **size**: type:TABLE, unit frame size http://wowprogramming.com/docs/widgets/Region/SetSize
* **point**: type:TABLE, unit frame position http://wowprogramming.com/docs/widgets/Region/SetPoint
* **scale**: type:NUMBER, defines the scale of the unit frame http://wowprogramming.com/docs/widgets/Frame/SetScale
* **points**: type:TABLE, contains multiple points. Raid unit only! In a raid you spawn up to 8 secure group headers. You must support 8 points. One for each header.

## Unit elements

Any unit can create any of the following elements on unit level.

* **healthbar**: type:TABLE, healthbar config
* **powerbar**: type:TABLE, powerbar config
* **castbar**: type:TABLE, castbar config
* **classbar**: type:TABLE, classbar config
* **altpowerbar**: type:TABLE, alternative powerbar config
* **raidmark**: type:TABLE, raidmark icon config
* **buffs**: type:TABLE, buff frame config
* **debuffs**: type:TABLE, debuff frame config

### Healthbar attributes

Healthbar and absorbbar cannot be disabled. Size and position matches the unit frame.

* **colorTapping**: type: BOOLEAN, Enables/disables coloring by tapping color.
* **colorDisconnected**: type: BOOLEAN, Enables/disables coloring by disconnected color.
* **colorReaction**: type: BOOLEAN, Enables/disables coloring by reaction color.
* **colorClass**: type: BOOLEAN, Enables/disables coloring by class color.
* **colorHealth**: type: BOOLEAN, Enables/disables coloring by health color.
* **colorThreat**: type: BOOLEAN, Enables/disables coloring by threat color. Checks if the unit has aggro from any other unit.
* **colorThreatInvers**: type: BOOLEAN, Enables/disables coloring by invers threat color. Checks if unit has aggro against "player".
* **frequentUpdates**: type: BOOLEAN, Enables/disables frequent updates
* **name**: type: TABLE, configuration for the name text
  * enabled: type:BOOLEAN, enable/disable element
  * points: type:TABLE, contains multiple points
  * point: type:TABLE, contains a single point
  * font: type:STRING, font family
  * size: type:NUMBER, font size
  * outline: type:STRING, font outline
  * align: type:STRING, text align
  * noshadow: type:BOOLEAN, Disable/enable text drop shadow
  * tag: type:STRING, oUF tag
* **healthtext**: type: TABLE, configuration for the health text
  * enabled: type:BOOLEAN, enable/disable element
  * points: type:TABLE, contains multiple points
  * point: type:TABLE, contains a single point
  * font: type:STRING, font family
  * size: type:NUMBER, font size
  * outline: type:STRING, font outline
  * align: type:STRING, text align
  * noshadow: type:BOOLEAN, Disable/enable text drop shadow
  * tag: type:STRING, oUF tag

### Powerbar attributes

* **enabled**: type:BOOLEAN, enable/disable element
* **size**: type:TABLE, element size http://wowprogramming.com/docs/widgets/Region/SetSize
* **point**: type:TABLE, element position http://wowprogramming.com/docs/widgets/Region/SetPoint
* **colorPower**: type: BOOLEAN, Enables/disables coloring by power color.

### Castbar attributes

* **enabled**: type:BOOLEAN, enable/disable element
* **size**: type:TABLE, element size http://wowprogramming.com/docs/widgets/Region/SetSize
* **point**: type:TABLE, element position http://wowprogramming.com/docs/widgets/Region/SetPoint
* **name**: type: TABLE, configuration for the name text
  * enabled: type:BOOLEAN, enable/disable element
  * points: type:TABLE, contains multiple points
  * point: type:TABLE, contains a single point
  * font: type:STRING, font family
  * size: type:NUMBER, font size
  * outline: type:STRING, font outline
  * align: type:STRING, text align
  * noshadow: type:BOOLEAN, Disable/enable text drop shadow
* **icon**: type: TABLE, configuration for the castbar icon
  * enabled: type:BOOLEAN, enable/disable element
  * point: type:TABLE, icon point
  * size: type:TABLE, icon size

### Classbar attributes

Classbar element for combo points, chi, holy power, etc. Makes sense for the player unit only.

* **enabled**: type:BOOLEAN, enable/disable element
* **size**: type:TABLE, element size http://wowprogramming.com/docs/widgets/Region/SetSize
* **point**: type:TABLE, element position http://wowprogramming.com/docs/widgets/Region/SetPoint

### Altpowerbar attributes

* **enabled**: type:BOOLEAN, enable/disable element
* **size**: type:TABLE, element size http://wowprogramming.com/docs/widgets/Region/SetSize
* **point**: type:TABLE, element position http://wowprogramming.com/docs/widgets/Region/SetPoint

### Raidmark attributes

* **enabled**: type:BOOLEAN, enable/disable element
* **size**: type:TABLE, element size http://wowprogramming.com/docs/widgets/Region/SetSize
* **point**: type:TABLE, element position http://wowprogramming.com/docs/widgets/Region/SetPoint

### Buffs attributes

* **enabled**: type:BOOLEAN, enable/disable element
* **point**: type:TABLE, element position http://wowprogramming.com/docs/widgets/Region/SetPoint
* **size**: type:NUMBER, aura icon size, value is applied to both width and height
* **num**: type:NUMBER, max number of aura icons
* **cols**: type:NUMBER, how many aura icons per column
* **spacing**: type:NUMBER, space between aura icons
* **initialAnchor**: type:STRING, initial anchor point (example: "BOTTOMLEFT"). Has to be a corner.
* **growthX**: type:STRING, grow direction x-axis. "LEFT" or "RIGHT"
* **growthY**: type:STRING, grow direction y-axis. "UP" or "DOWN"
* **disableCooldown**: type:BOOLEAN, disable/enable cooldown spiral
* **filter**: type:STRING, Unit aura filter. Defaults to "HELPFUL" on buffs and "HARMFUL" on debuffs.
* **CustomFilter**: type:FUNCTION, Custom filter function to filter the UnitAura result for specific icons

### Debuffs attributes

* **enabled**: type:BOOLEAN, enable/disable element
* **point**: type:TABLE, element position http://wowprogramming.com/docs/widgets/Region/SetPoint
* **size**: type:NUMBER, aura icon size, value is applied to both width and height
* **num**: type:NUMBER, max number of aura icons
* **cols**: type:NUMBER, how many aura icons per column
* **spacing**: type:NUMBER, space between aura icons
* **initialAnchor**: type:STRING, initial anchor point (example: "BOTTOMLEFT"). Has to be a corner.
* **growthX**: type:STRING, grow direction x-axis. "LEFT" or "RIGHT"
* **growthY**: type:STRING, grow direction y-axis. "UP" or "DOWN"
* **disableCooldown**: type:BOOLEAN, disable/enable cooldown spiral
* **filter**: type:STRING, Unit aura filter. Defaults to "HELPFUL" on buffs and "HARMFUL" on debuffs.
* **CustomFilter**: type:FUNCTION, Custom filter function to filter the UnitAura result for specific icons. Must return true or false.

## Special cases

Raid, party and boss can spawn multiple units of the same type. A special setup table is needed.

* **setup**: type:TABLE, unit specific setup table

### Boss setup

Allows you to define the position of all boss units that are not boss1.

* **point**: type:STRING, Point on this region at which it is to be anchored to another anchorPoint. (example: "TOP")
* **relativePoint**: type:STRING, Point on the other region to which this region is to be anchored. RelativeTo will be the boss frame preceding.
* **xOffset**: type:NUMBER, x-axis offset
* **yOffset**: type:NUMBER, y-axis offset

### Party setup and Raid setup

The following setup is needed to spawn the party header. http://wowprogramming.com/docs/secure_template/Group_Headers

* **template**: type:STRING, Blizzard frame template. When nil the "SecureGroupHeaderTemplate" is used.
* **visibility**: type:STRING, Custom visibility state driver. (example: "custom [group:party,nogroup:raid] show; hide")
* **showPlayer**: type:BOOLEAN, See http://wowprogramming.com/docs/secure_template/Group_Headers
* **showSolo**: type:BOOLEAN, See http://wowprogramming.com/docs/secure_template/Group_Headers
* **showParty**: type:BOOLEAN, See http://wowprogramming.com/docs/secure_template/Group_Headers
* **showRaid**: type:BOOLEAN, See http://wowprogramming.com/docs/secure_template/Group_Headers
* **point**: type:STRING, See http://wowprogramming.com/docs/secure_template/Group_Headers
* **xOffset**: type:NUMBER, See http://wowprogramming.com/docs/secure_template/Group_Headers
* **yOffset**: type:NUMBER, See http://wowprogramming.com/docs/secure_template/Group_Headers

## NamePlate callback

You can define the following function if you want to react on nameplate events.

```
local function NamePlateCallback(...)
  print(...)
end
L.C.NamePlateCallback = NamePlateCallback
```

You get notified on the following events:

* UpdateNamePlateOptions
* NAME_PLATE_UNIT_ADDED
* NAME_PLATE_UNIT_REMOVED
* PLAYER_TARGET_CHANGED

## NamePlate CVars

Nameplates base frames are provided by Blizzard. We cannot change them. We only spawn the nameplate unitframe sitting on the nameplate base.
Blizzard is using hidden cvars that can affect the look of your nameplates. You can use those cvars to manipulate the behaviour of your nameplates.
If you want to set them you need to wait until PLAYER_LOGIN (hence the callback in my example).

#### Chat command to print the default settings for a specific cvar
```lua
/run local cv = "nameplateShowAll"; print(cv, "default", GetCVarDefault(cv), "saved", GetCVar(cv))
```

*Build 22731, WoW patch 7.1, PTR*

```
nameplateClassResourceTopInset
nameplateGlobalScale
NamePlateHorizontalScale
nameplateLargeBottomInset
nameplateLargerScale
nameplateLargeTopInset
nameplateMaxAlpha
nameplateMaxAlphaDistance
nameplateMaxDistance
nameplateMaxScale
nameplateMaxScaleDistance
nameplateMinAlpha
nameplateMinAlphaDistance
nameplateMinScale
nameplateMinScaleDistance
nameplateMotion
nameplateMotionSpeed
nameplateOtherBottomInset
nameplateOtherTopInset
nameplateOverlapH
nameplateOverlapV
NameplatePersonalHideDelayAlpha
NameplatePersonalHideDelaySeconds
NameplatePersonalShowAlways
NameplatePersonalShowInCombat
NameplatePersonalShowWithTarget
nameplateSelectedAlpha
nameplateSelectedScale
nameplateSelfAlpha
nameplateSelfBottomInset
nameplateSelfScale
nameplateSelfTopInset
nameplateShowAll
nameplateShowEnemies
nameplateShowEnemyGuardians
nameplateShowEnemyMinions
nameplateShowEnemyMinus
nameplateShowEnemyPets
nameplateShowEnemyTotems
nameplateShowFriendlyGuardians
nameplateShowFriendlyMinions
nameplateShowFriendlyNPCs
nameplateShowFriendlyPets
nameplateShowFriendlyTotems
nameplateShowFriends
nameplateShowSelf
nameplateTargetBehindMaxDistance
NamePlateVerticalScale
ShowClassColorInNameplate
ShowNamePlateLoseAggroFlash
```