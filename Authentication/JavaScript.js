// Validate login form
function validateLogin() {
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;

    if (!username || !password) {
        alert("Please fill in both fields.");
        return false;
    }
    return true;
}

// Validate signup form
function validateSignup() {
    const username = document.getElementById('username').value;
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;

    if (!username || !email || !password) {
        alert("Please fill in all fields.");
        return false;
    }
    return true;
}
