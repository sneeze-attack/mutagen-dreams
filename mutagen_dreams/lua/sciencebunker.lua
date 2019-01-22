function Add_Mutagen_Map(item_id, item_quantity, x, y)
--Modified p.add_item function from https://github.com/ZhilkinSerg/Cataclysm-DDA-LUA/blob/master/dda-lua/lua/functions_player.lua

  if (item_quantity > 0) then

    item_quantity = math.floor(item_quantity)

    local item_ref = item(item_id, 1)

    container_id = "55gal_drum"

    local container = item(container_id, 1)

      for i = 1, item_quantity do

        item_ref = item(item_id, 1)
        container:fill_with(item_ref)

        if (container:get_remaining_capacity_for_liquid(item_ref, false) == 0 or container:is_container_full() or i == item_quantity) then
          local p = tripoint (x, y, 0)
          map:add_item(p, container)
          container = item(container_id, 1)

        end

      end

  end

end


--Begin main
local ps = player.start_location:str()

if ps == "sciencebunker" then

        Add_Mutagen_Map("iv_mutagen", 50, 12, 3)  

end

if ps == "alphabunker" then

        Add_Mutagen_Map("iv_mutagen_alpha", 50, 12, 3)                
        
end

if ps == "beastbunker" then

        Add_Mutagen_Map("iv_mutagen_beast", 50, 12, 3)                
        
end

if ps == "birdbunker" then

        Add_Mutagen_Map("iv_mutagen_bird", 50, 12, 3)                
        
end

if ps == "cattlebunker" then

        Add_Mutagen_Map("iv_mutagen_cattle", 50, 12, 3)                
        
end

if ps == "cephalopodbunker" then

        Add_Mutagen_Map("iv_mutagen_cephalopod", 50, 12, 3)                
        
end

if ps == "chimerabunker" then

        Add_Mutagen_Map("iv_mutagen_chimera", 50, 12, 3)                
        
end

if ps == "elfabunker" then

        Add_Mutagen_Map("iv_mutagen_elfa", 50, 12, 3)                
        
end

if ps == "felinebunker" then

        Add_Mutagen_Map("iv_mutagen_feline", 50, 12, 3)                
        
end

if ps == "fishbunker" then

        Add_Mutagen_Map("iv_mutagen_fish", 50, 12, 3)                
        
end

if ps == "insectbunker" then

        Add_Mutagen_Map("iv_mutagen_insect", 50, 12, 3)                
        
end

if ps == "lizardbunker" then

        Add_Mutagen_Map("iv_mutagen_lizard", 50, 12, 3)                
        
end

if ps == "lupinebunker" then

        Add_Mutagen_Map("iv_mutagen_lupine", 50, 12, 3)                
        
end

if ps == "medicalbunker" then

        Add_Mutagen_Map("iv_mutagen_medical", 50, 12, 3)                
        
end

if ps == "mousebunker" then

        Add_Mutagen_Map("iv_mutagen_mouse", 50, 12, 3)                
        
end

if ps == "plantbunker" then

        Add_Mutagen_Map("iv_mutagen_plant", 50, 12, 3)                
        
end

if ps == "raptorbunker" then

        Add_Mutagen_Map("iv_mutagen_raptor", 50, 12, 3)                
        
end

if ps == "ratbunker" then

        Add_Mutagen_Map("iv_mutagen_rat", 50, 12, 3)                
        
end

if ps == "slimebunker" then

        Add_Mutagen_Map("iv_mutagen_slime", 50, 12, 3)                
        
end

if ps == "spiderbunker" then

        Add_Mutagen_Map("iv_mutagen_spider", 50, 12, 3)                
        
end

if ps == "troglobitebunker" then

        Add_Mutagen_Map("iv_mutagen_troglobite", 50, 12, 3)                
        
end

if ps == "ursinebunker" then

        Add_Mutagen_Map("iv_mutagen_ursine", 50, 12, 3)                
        
end
