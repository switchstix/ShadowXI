---------------------------------------------------
-- Astral Flow
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getMobMod(MOBMOD_SCRIPTED_2HOUR) == 1) then
        return 1;
    elseif (mob:getPet() ~= nil) then
      return 0;
    else
        return 0;
    end;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_ASTRAL_FLOW;
    skill:setMsg(MSG_USES);

    -- if(mob:isInDynamis()) then
      -- use dynamis style astral flow
      local pet = mob:getPet();
      local modelId = pet:getModelId();
      
      -- switch (modelId) : caseof
      -- {
      --     [791] = function (x) abilityId = 656; end, -- Carbuncle
      --     [792] = function (x) abilityId = 583; end, -- Fenrir
      --     [793] = function (x) abilityId = 592; end, -- Ifrit
      --     [794] = function (x) abilityId = 601; end, -- Titan
      --     [795] = function (x) abilityId = 610; end, -- Leviathan
      --     [796] = function (x) abilityId = 619; end, -- Garuda
      --     [797] = function (x) abilityId = 628; end, -- Shiva
      --     [798] = function (x) abilityId = 637; end, -- Ramuh
      -- }
      
      -- if (abilityId ~= nil) then
      pet:useMobAbility(583, 495);
      -- end
    -- end

    return typeEffect;
end;
