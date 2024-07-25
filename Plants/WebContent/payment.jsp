<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .payment-form {
            background-color: #fff;
            padding: 35px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 500px;
            box-sizing: border-box;
        }

        .payment-form h2 {
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }

        .payment-methods {
            margin-bottom: 20px;
        }

        .payment-methods input[type="radio"] {
            margin-right: 10px;
            cursor: pointer;
        }

        .payment-methods label {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            cursor: pointer;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            transition: background-color 0.2s, border-color 0.2s;
        }

        .payment-methods label span {
            flex-grow: 1;
            text-align: left;
        }

        .payment-methods label:hover {
            background-color: #f0f0f0;
            border-color: #999;
        }

        .payment-methods input[type="radio"]:checked + img {
            border-color: #4CAF50;
        }

        .payment-icon {
            margin-right: 10px;
            width: 24px;
            height: 24px;
        }

        .form-group {
            margin-bottom: 15px;
            display: none; /* Initially hide all form groups */
            flex-wrap: wrap;
            gap: 15px;
        }

        .form-group.active {
            display: flex; /* Display only active form group */
        }

        .form-group input {
            flex: 1 1 100%; /* Each input takes full width of the form-group */
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        .error {
            color: red;
            font-size: 14px;
            margin-top: -10px;
            margin-bottom: 10px;
        }

        button {
            width: 100%;
            padding: 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="payment-form">
        <h2>Payment Methods</h2>
        <form id="paymentForm" action="index.jsp" method="POST" novalidate>
            <div class="payment-methods">
                <label for="debit-card">
                    <input type="radio" id="debit-card" name="payment_method" value="debit-card" checked>
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4AbVvS132apa5RS3XVm1e7KT91_QW0eawBg&s" alt="Debit card" class="payment-icon"> 
                    <span>Debit Card</span>
                </label>
                <label for="paypal">
                    <input type="radio" id="paypal" name="payment_method" value="paypal">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR0hotUhX7ZR4FQit77BChfSk8apdjuIJIdQ&s" alt="PayPal" class="payment-icon"> 
                    <span>PayPal</span>
                </label>
                <label for="credit-card">
                    <input type="radio" id="credit-card" name="payment_method" value="credit-card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyhXX3CQzbDrMn80ZAFzxp2Qa1JVr7-j_8HA&s" alt="Credit card" class="payment-icon"> 
                    <span>Credit Card</span>
                </label>
                <label for="upi">
                    <input type="radio" id="upi" name="payment_method" value="upi">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzNi6J3NL8AE7tufKZGVER0OrOsadL9xc9zg&s" alt="UPI" class="payment-icon"> 
                    <span>UPI</span>
                </label>
            </div>

            <div id="debit-card-form" class="form-group active">
                <input type="text" id="debit_card_number" name="debit_card_number" placeholder="Debit Card Number" pattern="\d{16}" title="Debit card number must be 16 digits" required>
                <div id="debit_card_number_error" class="error"></div>
                <input type="password" id="debit_card_cvc" name="debit_card_cvc" placeholder="Security Code" pattern="\d{3}" title="Security code must be 3 digits" required>
                <div id="debit_card_cvc_error" class="error"></div>
                <input type="date" id="debit_card_exp_month" name="debit_card_exp_month" required>
                <div id="debit_card_exp_month_error" class="error"></div>
            </div>

            <div id="paypal-form" class="form-group">
                <input type="email" id="paypal_email" name="paypal_email" placeholder="PayPal Email" required>
                <div id="paypal_email_error" class="error"></div>
            </div>

            <div id="credit-card-form" class="form-group">
                <input type="text" id="credit_card_number" name="credit_card_number" placeholder="Credit Card Number" pattern="\d{16}" title="Credit card number must be 16 digits" required>
                <div id="credit_card_number_error" class="error"></div>
                <input type="password" id="credit_card_cvc" name="credit_card_cvc" placeholder="Security Code" pattern="\d{4}" title="Security code must be 4 digits" required>
                <div id="credit_card_cvc_error" class="error"></div>
                <input type="date" id="credit_card_exp_month" name="credit_card_exp_month" required>
                <div id="credit_card_exp_month_error" class="error"></div>
            </div>

            <div id="upi-form" class="form-group">
                <input type="text" id="upi_id" name="upi_id" placeholder="UPI ID" required>
                <div id="upi_id_error" class="error"></div>
            </div>

            <button type="submit">Submit Order</button>
        </form>
    </div>

    <script>
        document.querySelectorAll('.payment-methods input[type="radio"]').forEach(function(radio) {
            radio.addEventListener('change', function() {
                const paymentMethod = this.value;
                // Hide all form groups
                document.querySelectorAll('.form-group').forEach(function(group) {
                    group.classList.remove('active');
                });
                // Show the selected form group
                document.getElementById(paymentMethod + '-form').classList.add('active');
            });
        });

        document.getElementById('paymentForm').addEventListener('submit', function(event) {
            let isValid = true;
            const paymentMethod = document.querySelector('.payment-methods input[type="radio"]:checked').value;

            // Validate based on selected payment method
            if (paymentMethod === 'debit-card') {
                // Validate Debit Card Number
                const debitCardNumber = document.getElementById('debit_card_number');
                const debitCardNumberError = document.getElementById('debit_card_number_error');
                const debitCardNumberPattern = /^\d{16}$/;
                if (!debitCardNumberPattern.test(debitCardNumber.value)) {
                    debitCardNumberError.textContent = 'Debit card number must be 16 digits.';
                    isValid = false;
                } else {
                    debitCardNumberError.textContent = '';
                }

                // Validate Debit Card CVC
                const debitCardCVC = document.getElementById('debit_card_cvc');
                const debitCardCVCError = document.getElementById('debit_card_cvc_error');
                const debitCardCVCPattern = /^\d{3}$/;
                if (!debitCardCVCPattern.test(debitCardCVC.value)) {
                    debitCardCVCError.textContent = 'Security code must be 3 digits.';
                    isValid = false;
                } else {
                    debitCardCVCError.textContent = '';
                }

                // Validate Debit Card Expiry Date
                const debitCardExpMonth = document.getElementById('debit_card_exp_month');
                const debitCardExpMonthError = document.getElementById('debit_card_exp_month_error');
                if (debitCardExpMonth.value === '') {
                    debitCardExpMonthError.textContent = 'Expiry date is required.';
                    isValid = false;
                } else {
                    debitCardExpMonthError.textContent = '';
                }
            } else if (paymentMethod === 'paypal') {
                // Validate PayPal Email
                const paypalEmail = document.getElementById('paypal_email');
                const paypalEmailError = document.getElementById('paypal_email_error');
                // Assuming basic email format validation
                if (paypalEmail.value.trim() === '') {
                    paypalEmailError.textContent = 'PayPal Email is required.';
                    isValid = false;
                } else if (!validateEmail(paypalEmail.value)) {
                    paypalEmailError.textContent = 'Invalid PayPal Email format.';
                    isValid = false;
                } else {
                    paypalEmailError.textContent = '';
                }
            } else if (paymentMethod === 'credit-card') {
                // Validate Credit Card Number
                const creditCardNumber = document.getElementById('credit_card_number');
                const creditCardNumberError = document.getElementById('credit_card_number_error');
                const creditCardNumberPattern = /^\d{16}$/;
                if (!creditCardNumberPattern.test(creditCardNumber.value)) {
                    creditCardNumberError.textContent = 'Credit card number must be 16 digits.';
                    isValid = false;
                } else {
                    creditCardNumberError.textContent = '';
                }

                // Validate Credit Card CVC
                const creditCardCVC = document.getElementById('credit_card_cvc');
                const creditCardCVCError = document.getElementById('credit_card_cvc_error');
                const creditCardCVCPattern = /^\d{4}$/;
                if (!creditCardCVCPattern.test(creditCardCVC.value)) {
                    creditCardCVCError.textContent = 'Security code must be 4 digits.';
                    isValid = false;
                } else {
                    creditCardCVCError.textContent = '';
                }

                // Validate Credit Card Expiry Date
                const creditCardExpMonth = document.getElementById('credit_card_exp_month');
                const creditCardExpMonthError = document.getElementById('credit_card_exp_month_error');
                if (creditCardExpMonth.value === '') {
                    creditCardExpMonthError.textContent = 'Expiry date is required.';
                    isValid = false;
                } else {
                    creditCardExpMonthError.textContent = '';
                }
            } else if (paymentMethod === 'upi') {
                // Validate UPI ID
                const upiId = document.getElementById('upi_id');
                const upiIdError = document.getElementById('upi_id_error');
                // Assuming UPI ID validation here (e.g., format validation)
                if (upiId.value.trim() === '') {
                    upiIdError.textContent = 'UPI ID is required.';
                    isValid = false;
                } else {
                    upiIdError.textContent = '';
                }
            }

            if (!isValid) {
                event.preventDefault();
            }
        });

        function validateEmail(email) {
            const re = /\S+@\S+\.\S+/;
            return re.test(email);
        }
    </script>
</body>
</html>