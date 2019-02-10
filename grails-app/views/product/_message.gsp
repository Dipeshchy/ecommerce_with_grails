<h5>Hello ${fullName},</h5>
<p>We recieved your order.You have ordered -> </p>
<table>
<g:each in="${products}" var="product" status="i">
    <tr>
    <td>${i+1}.</td>
    <td>${product.productName}</td>
    <td>Price : Rs.${product.price} </td>
    <td>Discount : Rs.${product.discount}</td>
    </tr>
</g:each>
</table>
<p>Your total price is Rs. ${totalPrice}</p>
<p>We will deliver these products at your address ${address} within 3 days.<br>
    We will call you at ${mobile} if needed. You can reply to us for further detail.</p>
<p>Your's Sincerely<br>Hari Prasad <br>My Shop<br>9843825731,01-4381943 <br>Baneshwor,Kathmandu</p>