<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Registration Result</title>
    <style>
        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            min-height: 100vh;
            background: linear-gradient(135deg, #11998e, #38ef7d);
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem 1rem;
        }

        .card {
            background: #fff;
            border-radius: 18px;
            box-shadow: 0 24px 64px rgba(0,0,0,0.18);
            padding: 2.5rem 2.2rem;
            width: 100%;
            max-width: 520px;
        }

        .success-header {
            text-align: center;
            margin-bottom: 2rem;
        }
        .success-header .emoji { font-size: 3rem; }
        .success-header h1 {
            font-size: 1.65rem;
            color: #1a1a2e;
            margin-top: 0.5rem;
        }
        .success-header p { color: #666; font-size: 0.88rem; margin-top: 0.3rem; }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 1.8rem;
        }

        tr { border-bottom: 1px solid #f2f2f2; }
        tr:last-child { border-bottom: none; }
        tr:hover { background: #f8f9ff; }

        th {
            padding: 0.75rem 0.9rem;
            text-align: left;
            font-size: 0.78rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            color: #999;
            width: 36%;
        }

        td {
            padding: 0.75rem 0.9rem;
            font-size: 0.96rem;
            color: #222;
            font-weight: 500;
        }

        .pill {
            display: inline-block;
            background: linear-gradient(135deg, #667eea22, #764ba222);
            color: #5a3e9a;
            padding: 0.2rem 0.75rem;
            border-radius: 20px;
            font-size: 0.9rem;
            font-weight: 600;
        }

        .btn-back {
            display: block;
            width: 100%;
            padding: 0.78rem;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: #fff;
            border: none;
            border-radius: 9px;
            font-size: 1rem;
            font-weight: 700;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            transition: opacity 0.2s;
        }
        .btn-back:hover { opacity: 0.88; }
    </style>
</head>
<body>

<div class="card">

    <div class="success-header">
        <div class="emoji">✅</div>
        <h1>Registration Successful!</h1>
        <p>Your details have been saved successfully.</p>
    </div>

    <table>
        <tbody>

            <tr>
                <th>👤 Name</th>
                <td><%= session.getAttribute("name") %></td>
            </tr>

            <tr>
                <th>📧 Email</th>
                <td><%= session.getAttribute("email") %></td>
            </tr>

            <tr>
                <th>🔒 Password</th>
                <%-- Never show real password in UI — display masked --%>
                <td><span class="pill">••••••••</span></td>
            </tr>

            <tr>
                <th>🎂 Age</th>
                <td><%= session.getAttribute("age") %> years</td>
            </tr>

            <tr>
                <th>⚧ Gender</th>
                <td><span class="pill"><%= session.getAttribute("gender") %></span></td>
            </tr>

            <tr>
                <th>📚 Course</th>
                <td><span class="pill"><%= session.getAttribute("course") %></span></td>
            </tr>

            <tr>
                <th>📅 Date of Birth</th>
                <td><%= session.getAttribute("dob") %></td>
            </tr>

        </tbody>
    </table>

    <a href="${pageContext.request.contextPath}/" class="btn-back">← Register Another Student</a>

</div>

</body>
</html>
