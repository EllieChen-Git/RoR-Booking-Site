Rails.application.routes.draw do

    # GET "/bookings" => retrieve all the bookings
    get "/bookings", to: "bookings#index", as: "bookings"

    # POST "/bookings" => create bookings
    post "/bookings", to: "bookings#create"

    # GET/FORM "/bookings/new" => form to create a new booking
    get "/bookings/new", to: "bookings#new", as: "new_booking"

    # GET "/bookings/:id" => retrieve a single booking
    get "/bookings/:id", to: "bookings#show", as: "booking"

    # GET/FORM "/bookings/:id/edit" => form to update a booking
    get "/bookings/:id/edit", to: "bookings#edit", as: "edit_booking"

    # PUT/PATCH "/bookings/:id" => update a booking
    put "/bookings/:id", to: "bookings#update"
    patch "/bookings/:id", to: "bookings#update"

    # DELETE "bookings/:id" => delete a booking
    delete "/bookings/:id", to: "bookings#destroy"

end
