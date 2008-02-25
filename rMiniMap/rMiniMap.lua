
  function GetMinimapShape() return "SQUARE" end
  local addon = CreateFrame"Frame"
  
  local frames = {
    MinimapZoomIn,
    MinimapZoomOut,
    MinimapBorderTop,
    MinimapToggleButton,
    MiniMapWorldMapButton,
    MiniMapVoiceChatFrame,
    MinimapNorthTag,
    MinimapZoneText,
    MinimapBorder,
    GameTimeFrame,
  }
  
  addon:SetScript("OnEvent", function()
  
  	if(event=="PLAYER_LOGIN") then
  	
          Minimap:EnableMouseWheel(true)
          Minimap:SetScript("OnMouseWheel", function(self, z)
              local c = Minimap:GetZoom()
              if(z > 0 and c < 5) then
                  Minimap:SetZoom(c + 1)
              elseif(z < 0 and c > 0) then
                  Minimap:SetZoom(c - 1)
              end
          end)
          
          --Minimap:SetPoint("Top",0,-15)
          
          Minimap:SetPoint("Top",0,-15)
          Minimap:SetPoint("Right",-15,0)
  
          MiniMapTrackingBorder:Hide()
          MiniMapTrackingBackground:Hide()
          MiniMapTracking:SetParent(Minimap)
          MiniMapTracking:ClearAllPoints()
          MiniMapTracking:SetPoint("TOPLEFT")
          MiniMapTrackingIcon:SetTexCoord(0.1,0.9,0.1,0.9)
          MiniMapTracking:SetScale(0.8)
          MiniMapBattlefieldBorder:Hide()
          MiniMapBattlefieldFrame:SetParent(Minimap)
          MiniMapBattlefieldFrame:ClearAllPoints()
          MiniMapBattlefieldFrame:SetPoint("TOPRIGHT", -2, -2)
          MiniMapMailFrame:UnregisterEvent"UPDATE_PENDING_MAIL"
          Minimap:SetMaskTexture"Interface\\AddOns\\rMiniMap\\mask"
          Minimap:SetScale(1)
      		
      		local f = CreateFrame("Frame", "minigloss")
          f:SetPoint("TOPLEFT", Minimap, "TOPLEFT", -1, 1)
          f:SetPoint("BOTTOMRIGHT", Minimap, "BOTTOMRIGHT", 1, -1)
          
          local t = f:CreateTexture(nil,"ARTWORK")
          t:SetTexture("Interface\\AddOns\\rTextures\\minigloss")
          t:SetPoint("TOPLEFT", f, "TOPLEFT", -0, 0)
          t:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 0, -0)
          f.texture = t

          
          for _, frame in pairs(frames) do
              frame:Hide()
              frame.Show = function() end
          end
          
  	end
  end)
  
  addon:RegisterEvent"PLAYER_LOGIN"