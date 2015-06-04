font "Helvetica"

im = Rails.application.assets.find_asset(Spree::PrintInvoice::Config[:print_invoice_logo_path])
image im , :at => [0,720], :scale => logo_scale


fill_color "E99323"
if @hide_prices
  text I18n.t(:packaging_slip), :align => :right, :style => :bold, :size => 15
else
  text I18n.t(:customer_invoice), :align => :right, :style => :bold, :size => 15
end
fill_color "000000"

move_down 4

font "Helvetica",  :size => 9,  :style => :bold
if Spree::PrintInvoice::Config.use_sequential_number? && @order.invoice_number.present? && !@hide_prices
  text "Factura: #{@order.invoice_number}", :align => :right
else
  text "Factura: #{@order.number}", :align => :right
end

move_down 2
font "Helvetica", :size => 9
text "#{I18n.l @order.completed_at.to_date}", :align => :right
text "", :align => :right
move_down 40
fill_color "000000"
text Spree.t(:company_name), :align => :left, :size => 10
text Spree.t(:company_direction), :align => :left, :size => 10
text Spree.t(:company_codezip), :align => :left, :size => 10
text Spree.t(:company_state), :align => :left, :size => 10
text Spree.t(:company_phone), :align => :left, :size => 10
text Spree.t(:company_ident_fiscal), :align => :left, :size => 10