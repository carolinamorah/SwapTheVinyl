class Offer < ApplicationRecord
    belongs_to :offeredvinyl_id, class_name: "Vinyl"
    belongs_to :receivervinyl_id, class_name: "Vinyl"
end
