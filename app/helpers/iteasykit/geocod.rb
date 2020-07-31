module Iteasykit
    module GeocodHelper

        def geocod(d)
            Iteasykit::FciString.where(iteasykit_fci_id: d).where.not(value: '').map{|e| e.value+', '+e.fieldable_id.to_s}.map{|e| e.split(', ')}
            #@arrr =[]
            #Iteasykit::FciString.where(iteasykit_fci_id: d) do |string|
            #    @results = Geocoder.coordinates(string.value)
            #    unless @results.nil?
             #       @results << string.fieldable_id.id
             #       @arrr << @results
            #    end
           # end
        end

    end                    
end
