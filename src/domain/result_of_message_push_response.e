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
class RESULT_OF_MESSAGE_PUSH_RESPONSE 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    code: INTEGER_32 
      
    data: detachable MESSAGE_PUSH_RESPONSE 
      
    errmsg: detachable STRING_32 
      

feature -- Change Element  
 
    set_code (a_name: like code)
        -- Set 'code' with 'a_name'.
      do
        code := a_name
      ensure
        code_set: code = a_name		
      end

    set_data (a_name: like data)
        -- Set 'data' with 'a_name'.
      do
        data := a_name
      ensure
        data_set: data = a_name		
      end

    set_errmsg (a_name: like errmsg)
        -- Set 'errmsg' with 'a_name'.
      do
        errmsg := a_name
      ensure
        errmsg_set: errmsg = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass RESULT_OF_MESSAGE_PUSH_RESPONSE%N")
        if attached code as l_code then
          Result.append ("%Ncode:")
          Result.append (l_code.out)
          Result.append ("%N")    
        end  
        if attached data as l_data then
          Result.append ("%Ndata:")
          Result.append (l_data.out)
          Result.append ("%N")    
        end  
        if attached errmsg as l_errmsg then
          Result.append ("%Nerrmsg:")
          Result.append (l_errmsg.out)
          Result.append ("%N")    
        end  
      end
end


