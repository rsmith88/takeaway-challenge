require 'invoice'

describe Invoice do
  describe '#total' do
    it 'creates an invoice for each order' do
      order_form = OrderForm.new
      order_form.add("muffin")
      order_form.add("cookie")
      invoice = Invoice.new(order_form.order)
      expect(invoice.total).to eq 5
    end
  end
end
