<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Student Registration</title>
    <style>
        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            min-height: 100vh;
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem 1rem;
        }

        .card {
            background: #fff;
            border-radius: 18px;
            box-shadow: 0 24px 64px rgba(0,0,0,0.22);
            padding: 2.5rem 2.2rem;
            width: 100%;
            max-width: 500px;
        }

        .card-header {
            text-align: center;
            margin-bottom: 2rem;
        }
        .card-header .emoji { font-size: 2.8rem; }
        .card-header h1 {
            font-size: 1.65rem;
            color: #1a1a2e;
            margin-top: 0.4rem;
        }
        .card-header p { color: #777; font-size: 0.88rem; margin-top: 0.3rem; }

        .form-group { margin-bottom: 1.15rem; }

        label {
            display: block;
            font-size: 0.82rem;
            font-weight: 700;
            color: #444;
            margin-bottom: 0.35rem;
            text-transform: uppercase;
            letter-spacing: 0.04em;
        }
        label .req { color: #e74c3c; }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="number"],
        input[type="date"],
        select {
            width: 100%;
            padding: 0.62rem 0.85rem;
            border: 1.8px solid #e0e0e0;
            border-radius: 9px;
            font-size: 0.94rem;
            color: #333;
            background: #fafafa;
            outline: none;
            transition: border-color 0.2s, box-shadow 0.2s;
        }
        input:focus, select:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102,126,234,0.18);
            background: #fff;
        }

        .radio-row { display: flex; gap: 1.4rem; padding-top: 0.25rem; }
        .radio-row label {
            display: flex;
            align-items: center;
            gap: 0.4rem;
            font-weight: 500;
            text-transform: none;
            letter-spacing: normal;
            cursor: pointer;
            color: #333;
        }
        .radio-row input[type="radio"] {
            width: 16px; height: 16px;
            accent-color: #667eea;
        }

        .btn {
            width: 100%;
            padding: 0.78rem;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: #fff;
            border: none;
            border-radius: 9px;
            font-size: 1rem;
            font-weight: 700;
            cursor: pointer;
            margin-top: 0.6rem;
            letter-spacing: 0.03em;
            transition: opacity 0.2s, transform 0.12s;
        }
        .btn:hover  { opacity: 0.9; transform: translateY(-1px); }
        .btn:active { transform: translateY(0); }
    </style>
</head>
<body>

<div class="card">
    <div class="card-header">
        <div class="emoji">🎓</div>
        <h1>Student Registration</h1>
        <p>Please fill in all the fields below</p>
    </div>

    <form action="${pageContext.request.contextPath}/submit" method="post">

        <div class="form-group">
            <label for="name">Full Name <span class="req">*</span></label>
            <input type="text" id="name" name="name"
                   placeholder="e.g. Arjun Sharma"
                   required minlength="2" maxlength="60"/>
        </div>

        <div class="form-group">
            <label for="email">Email Address <span class="req">*</span></label>
            <input type="email" id="email" name="email"
                   placeholder="e.g. arjun@example.com" required/>
        </div>

        <div class="form-group">
            <label for="password">Password <span class="req">*</span></label>
            <input type="password" id="password" name="password"
                   placeholder="Minimum 6 characters"
                   required minlength="6"/>
        </div>

        <div class="form-group">
            <label for="age">Age <span class="req">*</span></label>
            <input type="number" id="age" name="age"
                   placeholder="e.g. 20"
                   required min="1" max="120"/>
        </div>

        <div class="form-group">
            <label>Gender <span class="req">*</span></label>
            <div class="radio-row">
                <label><input type="radio" name="gender" value="Male"   required/> Male</label>
                <label><input type="radio" name="gender" value="Female"/> Female</label>
                <label><input type="radio" name="gender" value="Other"/> Other</label>
            </div>
        </div>

        <div class="form-group">
            <label for="course">Course <span class="req">*</span></label>
            <select id="course" name="course" required>
                <option value="" disabled selected>-- Select a course --</option>
                <option value="B.Tech CSE">B.Tech CSE</option>
                <option value="B.Tech IT">B.Tech IT</option>
                <option value="B.Tech ECE">B.Tech ECE</option>
                <option value="B.Sc Computer Science">B.Sc Computer Science</option>
                <option value="MCA">MCA</option>
                <option value="MBA">MBA</option>
            </select>
        </div>

        <div class="form-group">
            <label for="dob">Date of Birth <span class="req">*</span></label>
            <input type="date" id="dob" name="dob" required/>
        </div>

        <button type="submit" class="btn">Submit Registration →</button>

    </form>
</div>

</body>
</html>
