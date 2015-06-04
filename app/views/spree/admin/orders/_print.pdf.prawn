require 'prawn/layout'

render :partial => "header"
move_down 20
render :partial => "address"

move_down 15

render :partial => "line_items_box"

move_down 8

# Footer
# render :partial => "footer"