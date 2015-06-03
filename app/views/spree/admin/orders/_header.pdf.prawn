fill_color "E99323"
if @hide_prices
  text Spree.t(:packaging_slip), :align => :right, :style => :bold, :size => 18
else
  text Spree.t(:customer_invoice), :align => :right, :style => :bold, :size => 18
end

text Spree.t(:company_name), :align => :left, :size => 14
text Spree.t(:company_direction), :align => :left, :size => 14
text Spree.t(:company_codezip), :align => :left, :size => 14
text Spree.t(:company_state), :align => :left, :size => 14
text Spree.t(:company_phone), :align => :left, :size => 14
text Spree.t(:company_ident_fiscal), :align => :left, :size => 14

fill_color "000000"