note
 description:"[
		DaDaPush Public API
 		DaDaPush: Real-time Notifications App Send real-time notifications through our API without coding and maintaining your own app for iOS or Android devices.
  		The version of the OpenAPI document: v1
 	    Contact: contacts@dadapush.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class MESSAGE_OBJECT 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    actions: detachable LIST [ACTION] 
      -- action size range is 0,3
    channel_name: detachable STRING_32 
      
    content: detachable STRING_32 
      
    created_at: detachable STRING_32 
      
    id: INTEGER_64 
      
    title: detachable STRING_32 
      

feature -- Change Element  
 
    set_actions (a_name: like actions)
        -- Set 'actions' with 'a_name'.
      do
        actions := a_name
      ensure
        actions_set: actions = a_name		
      end

    set_channel_name (a_name: like channel_name)
        -- Set 'channel_name' with 'a_name'.
      do
        channel_name := a_name
      ensure
        channel_name_set: channel_name = a_name		
      end

    set_content (a_name: like content)
        -- Set 'content' with 'a_name'.
      do
        content := a_name
      ensure
        content_set: content = a_name		
      end

    set_created_at (a_name: like created_at)
        -- Set 'created_at' with 'a_name'.
      do
        created_at := a_name
      ensure
        created_at_set: created_at = a_name		
      end

    set_id (a_name: like id)
        -- Set 'id' with 'a_name'.
      do
        id := a_name
      ensure
        id_set: id = a_name		
      end

    set_title (a_name: like title)
        -- Set 'title' with 'a_name'.
      do
        title := a_name
      ensure
        title_set: title = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass MESSAGE_OBJECT%N")
        if attached actions as l_actions then
          across l_actions as ic loop
            Result.append ("%N actions:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end 
        if attached channel_name as l_channel_name then
          Result.append ("%Nchannel_name:")
          Result.append (l_channel_name.out)
          Result.append ("%N")    
        end  
        if attached content as l_content then
          Result.append ("%Ncontent:")
          Result.append (l_content.out)
          Result.append ("%N")    
        end  
        if attached created_at as l_created_at then
          Result.append ("%Ncreated_at:")
          Result.append (l_created_at.out)
          Result.append ("%N")    
        end  
        if attached id as l_id then
          Result.append ("%Nid:")
          Result.append (l_id.out)
          Result.append ("%N")    
        end  
        if attached title as l_title then
          Result.append ("%Ntitle:")
          Result.append (l_title.out)
          Result.append ("%N")    
        end  
      end
end


