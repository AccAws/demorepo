<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop · Grand Luxe</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Playfair+Display:wght@600;700;800&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary-deep: #0b1a2e;
            --primary-dark: #0f2338;
            --accent-gold: #c9a03d;
            --accent-gold-light: #e5c874;
            --accent-teal: #1e4a6b;
            --light-bg: #f5f2ed;
            --cream: #faf8f5;
            --dark-text: #1e1e1e;
            --gray-muted: #5e5e5e;
            --success-deep: #1e7e34;
            --card-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.25);
            --gold-shadow: 0 8px 20px -8px rgba(201, 160, 61, 0.4);
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: #ffffff;
            color: var(--dark-text);
            line-height: 1.5;
        }

        h1, h2, h3, h4, .logo, .section-title h2 {
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            letter-spacing: -0.02em;
        }

        .container {
            max-width: 1440px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* ---------- RICH HEADER ---------- */
        header {
            background: linear-gradient(145deg, #ffffff 0%, #faf8f5 100%);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.03), 0 2px 6px rgba(0, 0, 0, 0.02);
            border-bottom: 1px solid rgba(201, 160, 61, 0.2);
            position: sticky;
            top: 0;
            z-index: 1000;
            backdrop-filter: blur(12px);
            background-color: rgba(255, 255, 255, 0.85);
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 18px 0;
        }

        .logo {
            font-size: 30px;
            font-weight: 800;
            color: var(--primary-deep);
            text-decoration: none;
            letter-spacing: -0.03em;
            background: linear-gradient(135deg, #0b1a2e 0%, #1e4a6b 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .logo span {
            background: linear-gradient(135deg, #c9a03d, #e5c874);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 8px;
        }

        nav ul li a {
            text-decoration: none;
            color: var(--primary-deep);
            font-weight: 600;
            font-size: 15px;
            padding: 8px 18px;
            border-radius: 40px;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 6px;
            letter-spacing: -0.01em;
            border: 1px solid transparent;
        }

        nav ul li a i {
            color: var(--accent-gold);
            font-size: 14px;
        }

        nav ul li a:hover {
            background: rgba(201, 160, 61, 0.08);
            border-color: rgba(201, 160, 61, 0.3);
            color: #0b1a2e;
        }

        .dropdown {
            position: relative;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background: rgba(255, 255, 255, 0.98);
            backdrop-filter: blur(16px);
            min-width: 240px;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.25);
            border-radius: 24px;
            padding: 12px 8px;
            top: 100%;
            left: 0;
            border: 1px solid rgba(201, 160, 61, 0.25);
            z-index: 100;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown-content a {
            padding: 12px 18px;
            display: flex;
            align-items: center;
            gap: 12px;
            color: var(--primary-deep);
            border-radius: 40px;
            font-weight: 500;
        }

        .dropdown-content a i {
            width: 20px;
            color: var(--accent-gold);
        }

        .dropdown-content a:hover {
            background: rgba(201, 160, 61, 0.1);
        }

        .search-bar {
            display: flex;
            align-items: center;
            background: var(--cream);
            border-radius: 60px;
            padding: 6px 6px 6px 18px;
            width: 280px;
            border: 1px solid rgba(201, 160, 61, 0.3);
            transition: all 0.3s;
        }

        .search-bar:focus-within {
            border-color: var(--accent-gold);
            box-shadow: 0 0 0 4px rgba(201, 160, 61, 0.1);
        }

        .search-bar input {
            border: none;
            background: transparent;
            width: 100%;
            padding: 10px 0;
            outline: none;
            font-size: 14px;
            font-weight: 500;
            color: var(--primary-deep);
        }

        .search-bar input::placeholder {
            color: #8a8a8a;
            font-weight: 400;
        }

        .search-bar button {
            background: var(--primary-deep);
            border: none;
            color: white;
            width: 42px;
            height: 42px;
            border-radius: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.3s;
        }

        .search-bar button:hover {
            background: var(--accent-gold);
            color: #0b1a2e;
        }

        .header-icons {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .header-icons a {
            color: var(--primary-deep);
            font-size: 18px;
            width: 44px;
            height: 44px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            background: rgba(201, 160, 61, 0.06);
            transition: all 0.3s ease;
            position: relative;
        }

        .header-icons a:hover {
            background: var(--accent-gold);
            color: white;
            transform: translateY(-2px);
        }

        .cart-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent-gold);
            color: #0b1a2e;
            border-radius: 30px;
            width: 20px;
            height: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 11px;
            font-weight: 800;
            border: 2px solid white;
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 24px;
            color: var(--primary-deep);
            cursor: pointer;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            transition: all 0.3s;
        }

        .mobile-menu-btn:hover {
            background: rgba(201, 160, 61, 0.1);
        }

        /* ---------- HERO (GRAND) ---------- */
        .hero {
            min-height: 620px;
            background: linear-gradient(105deg, rgba(11, 26, 46, 0.92) 0%, rgba(11, 26, 46, 0.75) 50%, rgba(30, 74, 107, 0.6) 100%), 
                        url('https://images.unsplash.com/photo-1441984904996-e0b6ba687e04?q=80&w=2070&auto=format&fit=crop') center/cover no-repeat;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
        }

        .hero::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 120px;
            background: linear-gradient(to top, #ffffff, transparent);
            pointer-events: none;
        }

        .hero-content {
            max-width: 680px;
            margin-left: 6%;
            padding: 100px 0;
            position: relative;
            z-index: 3;
            color: white;
        }

        .hero h1 {
            font-size: 68px;
            line-height: 1.1;
            margin-bottom: 24px;
            font-weight: 800;
            text-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            letter-spacing: -0.02em;
        }

        .hero h1 span {
            background: linear-gradient(135deg, #e5c874, #c9a03d);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            display: inline-block;
        }

        .hero p {
            font-size: 20px;
            margin-bottom: 40px;
            opacity: 0.9;
            font-weight: 400;
            max-width: 520px;
            text-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 16px 38px;
            border-radius: 60px;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.3s ease;
            font-size: 16px;
            letter-spacing: -0.01em;
            border: 1px solid transparent;
        }

        .btn-primary {
            background: linear-gradient(135deg, #c9a03d, #e5c874);
            color: #0b1a2e;
            box-shadow: 0 12px 30px -8px rgba(201, 160, 61, 0.5);
            border: none;
        }

        .btn-primary:hover {
            background: linear-gradient(135deg, #d4ab48, #f0d48c);
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 22px 40px -8px rgba(201, 160, 61, 0.6);
        }

        .btn-secondary {
            background: transparent;
            color: white;
            border: 2px solid rgba(255, 255, 255, 0.5);
            backdrop-filter: blur(8px);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: rgba(255, 255, 255, 0.9);
            transform: translateY(-3px);
        }

        /* ---------- SECTION TITLES ---------- */
        .section-title {
            text-align: center;
            margin: 80px 0 50px;
        }

        .section-title h2 {
            font-size: 44px;
            color: var(--primary-deep);
            margin-bottom: 12px;
            font-weight: 800;
            letter-spacing: -0.02em;
            position: relative;
            display: inline-block;
        }

        .section-title h2::after {
            content: '';
            position: absolute;
            bottom: -12px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background: linear-gradient(90deg, transparent, #c9a03d, transparent);
            border-radius: 3px;
        }

        .section-title p {
            color: var(--gray-muted);
            font-size: 17px;
            max-width: 600px;
            margin: 20px auto 0;
        }

        /* ---------- CATEGORY CARDS (LUXE) ---------- */
        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 24px;
            margin-bottom: 80px;
        }

        .category-card {
            background: white;
            border-radius: 28px;
            padding: 34px 16px 28px;
            text-align: center;
            box-shadow: 0 15px 35px -12px rgba(0, 0, 0, 0.08);
            transition: all 0.4s cubic-bezier(0.2, 0.9, 0.3, 1);
            border: 1px solid rgba(201, 160, 61, 0.15);
            position: relative;
            overflow: hidden;
        }

        .category-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: linear-gradient(90deg, #c9a03d, #e5c874);
            opacity: 0;
            transition: opacity 0.3s;
        }

        .category-card:hover {
            transform: translateY(-12px);
            box-shadow: 0 35px 50px -20px rgba(0, 0, 0, 0.2);
            border-color: rgba(201, 160, 61, 0.4);
        }

        .category-card:hover::before {
            opacity: 1;
        }

        .category-icon {
            font-size: 48px;
            margin-bottom: 18px;
            background: linear-gradient(135deg, #c9a03d, #e5c874);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .category-card h3 {
            font-size: 20px;
            font-weight: 700;
            color: var(--primary-deep);
            margin-bottom: 8px;
            font-family: 'Playfair Display', serif;
        }

        .category-card p {
            color: var(--gray-muted);
            font-size: 14px;
            font-weight: 400;
            line-height: 1.4;
        }

        /* ---------- PRODUCT CARDS ---------- */
        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 32px;
            margin-bottom: 80px;
        }

        .product-card {
            background: white;
            border-radius: 30px;
            overflow: hidden;
            box-shadow: 0 18px 40px -18px rgba(0, 0, 0, 0.15);
            transition: all 0.4s cubic-bezier(0.2, 0.9, 0.3, 1);
            position: relative;
            border: 1px solid rgba(201, 160, 61, 0.1);
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 35px 55px -20px rgba(0, 0, 0, 0.25);
            border-color: rgba(201, 160, 61, 0.3);
        }

        .product-badge {
            position: absolute;
            top: 16px;
            left: 16px;
            background: linear-gradient(135deg, #c9a03d, #e5c874);
            color: #0b1a2e;
            padding: 6px 16px;
            border-radius: 40px;
            font-size: 12px;
            font-weight: 800;
            letter-spacing: 0.3px;
            z-index: 5;
            box-shadow: 0 6px 14px rgba(201, 160, 61, 0.4);
        }

        .product-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: transform 0.6s ease;
        }

        .product-card:hover .product-img {
            transform: scale(1.05);
        }

        .product-info {
            padding: 20px 20px 24px;
        }

        .product-info h3 {
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 6px;
            color: var(--primary-deep);
            font-family: 'Inter', sans-serif;
            letter-spacing: -0.01em;
        }

        .product-info .price {
            font-weight: 800;
            color: var(--primary-deep);
            font-size: 20px;
            margin-bottom: 6px;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .product-info .old-price {
            text-decoration: line-through;
            color: #a0a0a0;
            font-size: 15px;
            font-weight: 500;
        }

        .product-info .rating {
            color: #c9a03d;
            margin-bottom: 16px;
            font-size: 14px;
            letter-spacing: 2px;
        }

        .product-info .rating span {
            color: #8a8a8a;
            font-size: 13px;
            letter-spacing: 0;
            margin-left: 6px;
        }

        .add-to-cart {
            width: 100%;
            padding: 12px 0;
            background: var(--primary-deep);
            color: white;
            border: none;
            border-radius: 40px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 700;
            font-size: 15px;
            letter-spacing: -0.01em;
            border: 1px solid transparent;
        }

        .add-to-cart:hover {
            background: var(--accent-gold);
            color: #0b1a2e;
            transform: scale(1.02);
            box-shadow: 0 10px 20px -8px rgba(201, 160, 61, 0.5);
        }

        /* ---------- DEAL SECTION ---------- */
        .deals {
            background: linear-gradient(120deg, #faf8f5 0%, #f0ede7 100%);
            padding: 80px 0;
            margin-bottom: 80px;
            border-top: 1px solid rgba(201, 160, 61, 0.2);
            border-bottom: 1px solid rgba(201, 160, 61, 0.2);
        }

        .deal-container {
            display: flex;
            align-items: center;
            background: white;
            border-radius: 40px;
            overflow: hidden;
            box-shadow: 0 30px 60px -20px rgba(0, 0, 0, 0.2);
            border: 1px solid rgba(201, 160, 61, 0.15);
        }

        .deal-img {
            width: 50%;
            height: 520px;
            object-fit: cover;
        }

        .deal-content {
            width: 50%;
            padding: 56px 48px;
        }

        .deal-content h3 {
            font-size: 40px;
            color: var(--primary-deep);
            margin-bottom: 12px;
            font-weight: 800;
        }

        .deal-content > p {
            color: var(--gray-muted);
            font-size: 17px;
            margin-bottom: 24px;
        }

        .deal-timer {
            display: flex;
            gap: 16px;
            margin: 30px 0 32px;
        }

        .timer-box {
            text-align: center;
            background: var(--primary-deep);
            color: white;
            padding: 14px 10px;
            border-radius: 20px;
            min-width: 80px;
            box-shadow: 0 10px 20px -8px rgba(0, 0, 0, 0.2);
        }

        .timer-box span:first-child {
            font-size: 32px;
            font-weight: 800;
            display: block;
            line-height: 1.2;
            font-family: 'Playfair Display', serif;
            color: #e5c874;
        }

        .timer-box span:last-child {
            font-size: 12px;
            opacity: 0.7;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 600;
        }

        .deal-price {
            font-size: 38px;
            font-weight: 800;
            color: var(--primary-deep);
            margin-bottom: 16px;
            display: flex;
            align-items: center;
            gap: 12px;
            flex-wrap: wrap;
        }

        .deal-old-price {
            text-decoration: line-through;
            color: #a0a0a0;
            font-size: 22px;
            font-weight: 500;
        }

        .deal-discount {
            background: linear-gradient(135deg, #c9a03d, #e5c874);
            color: #0b1a2e;
            padding: 6px 16px;
            border-radius: 40px;
            font-size: 14px;
            font-weight: 800;
        }

        .deal-content .btn-primary {
            margin-top: 8px;
            padding: 16px 44px;
            font-size: 17px;
        }

        /* ---------- TESTIMONIALS ---------- */
        .testimonials {
            margin-bottom: 80px;
        }

        .testimonial-slider {
            display: flex;
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            gap: 30px;
            padding: 30px 8px 50px;
            scrollbar-width: none;
            cursor: grab;
        }

        .testimonial-slider::-webkit-scrollbar {
            display: none;
        }

        .testimonial-card {
            min-width: 380px;
            background: white;
            border-radius: 32px;
            padding: 36px 32px;
            box-shadow: 0 18px 40px -18px rgba(0, 0, 0, 0.12);
            scroll-snap-align: start;
            border: 1px solid rgba(201, 160, 61, 0.12);
            transition: all 0.3s;
        }

        .testimonial-card:hover {
            border-color: rgba(201, 160, 61, 0.35);
            box-shadow: 0 28px 50px -18px rgba(0, 0, 0, 0.2);
        }

        .testimonial-card .rating {
            color: #c9a03d;
            margin-bottom: 20px;
            font-size: 18px;
            letter-spacing: 3px;
        }

        .testimonial-card p {
            font-style: italic;
            margin-bottom: 28px;
            font-size: 16px;
            line-height: 1.7;
            color: #2a2a2a;
        }

        .user-info {
            display: flex;
            align-items: center;
        }

        .user-avatar {
            width: 56px;
            height: 56px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 18px;
            border: 3px solid #e5c874;
            padding: 2px;
        }

        .user-name {
            font-weight: 700;
            color: var(--primary-deep);
            font-size: 16px;
        }

        .user-title {
            color: var(--gray-muted);
            font-size: 13px;
            font-weight: 500;
        }

        /* ---------- NEWSLETTER ---------- */
        .newsletter {
            background: linear-gradient(135deg, #0b1a2e 0%, #1e4a6b 100%);
            color: white;
            padding: 80px 0;
            text-align: center;
            margin-bottom: 80px;
            position: relative;
            overflow: hidden;
        }

        .newsletter::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -10%;
            width: 300px;
            height: 300px;
            background: radial-gradient(circle, rgba(201, 160, 61, 0.15), transparent 70%);
            border-radius: 50%;
        }

        .newsletter h2 {
            font-size: 44px;
            margin-bottom: 16px;
            color: #e5c874;
            position: relative;
            z-index: 2;
        }

        .newsletter p {
            max-width: 560px;
            margin: 0 auto 36px;
            opacity: 0.85;
            font-size: 18px;
            position: relative;
            z-index: 2;
        }

        .newsletter-form {
            display: flex;
            max-width: 560px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
            box-shadow: 0 20px 40px -12px rgba(0, 0, 0, 0.4);
            border-radius: 60px;
        }

        .newsletter-form input {
            flex: 1;
            padding: 18px 28px;
            border: none;
            border-radius: 60px 0 0 60px;
            outline: none;
            font-size: 16px;
            background: rgba(255, 255, 255, 0.95);
            color: #0b1a2e;
            font-weight: 500;
        }

        .newsletter-form button {
            padding: 0 44px;
            background: linear-gradient(135deg, #c9a03d, #e5c874);
            color: #0b1a2e;
            border: none;
            border-radius: 0 60px 60px 0;
            font-weight: 800;
            cursor: pointer;
            transition: all 0.3s;
            font-size: 16px;
            letter-spacing: -0.01em;
        }

        .newsletter-form button:hover {
            background: linear-gradient(135deg, #d4ab48, #f0d48c);
            padding: 0 48px;
        }

        /* ---------- FOOTER ---------- */
        footer {
            background: #0b1a2e;
            color: #b8c7d9;
            padding: 70px 0 30px;
            border-top: 3px solid #c9a03d;
        }

        .footer-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 48px;
            margin-bottom: 50px;
        }

        .footer-col h3 {
            font-size: 20px;
            color: white;
            margin-bottom: 24px;
            position: relative;
            padding-bottom: 14px;
            font-family: 'Playfair Display', serif;
            letter-spacing: -0.01em;
        }

        .footer-col h3::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            width: 50px;
            height: 3px;
            background: linear-gradient(90deg, #c9a03d, #e5c874);
            border-radius: 3px;
        }

        .footer-col ul {
            list-style: none;
        }

        .footer-col ul li {
            margin-bottom: 14px;
        }

        .footer-col ul li a {
            color: #b8c7d9;
            text-decoration: none;
            transition: all 0.3s;
            font-weight: 400;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .footer-col ul li a i {
            color: #c9a03d;
            font-size: 12px;
            transition: transform 0.3s;
        }

        .footer-col ul li a:hover {
            color: #e5c874;
            padding-left: 6px;
        }

        .footer-col ul li a:hover i {
            transform: translateX(4px);
        }

        .social-links {
            display: flex;
            gap: 16px;
            margin-top: 24px;
        }

        .social-links a {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 46px;
            height: 46px;
            background: rgba(255, 255, 255, 0.06);
            border-radius: 50%;
            color: white;
            transition: all 0.3s ease;
            border: 1px solid rgba(201, 160, 61, 0.2);
            font-size: 18px;
        }

        .social-links a:hover {
            background: #c9a03d;
            color: #0b1a2e;
            transform: translateY(-5px);
            border-color: #c9a03d;
            box-shadow: 0 12px 20px -8px rgba(201, 160, 61, 0.5);
        }

        .payment-methods {
            display: flex;
            gap: 12px;
            margin-top: 24px;
        }

        .payment-methods img {
            height: 28px;
            filter: brightness(0) invert(1);
            opacity: 0.7;
            transition: all 0.3s;
        }

        .payment-methods img:hover {
            opacity: 1;
            transform: scale(1.1);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 28px;
            border-top: 1px solid rgba(201, 160, 61, 0.2);
            color: #8a9db0;
            font-size: 15px;
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 1200px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }
            .products {
                grid-template-columns: repeat(3, 1fr);
            }
            .deal-container {
                flex-direction: column;
            }
            .deal-img, .deal-content {
                width: 100%;
            }
            .deal-img {
                height: 360px;
            }
            .hero h1 {
                font-size: 54px;
            }
        }

        @media (max-width: 992px) {
            .footer-container {
                grid-template-columns: repeat(2, 1fr);
            }
            .hero h1 {
                font-size: 46px;
            }
            .section-title h2 {
                font-size: 36px;
            }
        }

        @media (max-width: 768px) {
            .container {
                padding: 0 24px;
            }
            .header-container {
                flex-wrap: wrap;
            }
            .search-bar {
                order: 3;
                width: 100%;
                margin-top: 16px;
            }
            .categories {
                grid-template-columns: repeat(2, 1fr);
            }
            .products {
                grid-template-columns: repeat(2, 1fr);
            }
            .hero h1 {
                font-size: 38px;
            }
            .hero p {
                font-size: 17px;
            }
            .mobile-menu-btn {
                display: flex;
                align-items: center;
                justify-content: center;
            }
            nav {
                display: none;
                width: 100%;
                order: 4;
                margin-top: 16px;
            }
            nav.active {
                display: block;
            }
            nav ul {
                flex-direction: column;
                gap: 4px;
            }
            nav ul li a {
                padding: 14px 18px;
            }
            .dropdown-content {
                position: static;
                box-shadow: none;
                display: none;
                padding-left: 20px;
                background: transparent;
                border: none;
            }
            .dropdown:hover .dropdown-content {
                display: none;
            }
            .dropdown.active .dropdown-content {
                display: block;
            }
            .deal-content {
                padding: 36px 28px;
            }
            .deal-content h3 {
                font-size: 30px;
            }
            .testimonial-card {
                min-width: 300px;
                padding: 28px 24px;
            }
        }

        @media (max-width: 576px) {
            .categories, .products {
                grid-template-columns: 1fr;
            }
            .newsletter-form {
                flex-direction: column;
                border-radius: 40px;
                box-shadow: none;
                background: transparent;
            }
            .newsletter-form input, .newsletter-form button {
                border-radius: 60px;
            }
            .newsletter-form button {
                margin-top: 12px;
                padding: 18px;
            }
            .footer-container {
                grid-template-columns: 1fr;
            }
            .hero h1 {
                font-size: 32px;
            }
            .deal-timer {
                flex-wrap: wrap;
            }
            .deal-price {
                font-size: 28px;
            }
            .section-title h2 {
                font-size: 30px;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container header-container">
            <a href="#" class="logo">Nexus<span>Shop</span></a>
            
            <nav id="mainNav">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li class="dropdown">
                        <a href="#"><i class="fas fa-th-large"></i> Collections <i class="fas fa-chevron-down" style="font-size: 12px;"></i></a>
                        <div class="dropdown-content">
                            <a href="#"><i class="fas fa-mobile-alt"></i> Smartphones</a>
                            <a href="#"><i class="fas fa-laptop"></i> Laptops</a>
                            <a href="#"><i class="fas fa-tshirt"></i> Clothing</a>
                            <a href="#"><i class="fas fa-headphones"></i> Gadgets</a>
                            <a href="#"><i class="fas fa-shoe-prints"></i> Footwear</a>
                            <a href="#"><i class="fas fa-watch"></i> Accessories</a>
                        </div>
                    </li>
                    <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#"><i class="fas fa-percent"></i> Deals</a></li>
                    <li><a href="#"><i class="fas fa-info-circle"></i> About</a></li>
                    <li><a href="#"><i class="fas fa-envelope"></i> Contact</a></li>
                </ul>
            </nav>
            
            <div class="search-bar">
                <input type="text" placeholder="Search premium products...">
                <button type="submit"><i class="fas fa-search"></i></button>
            </div>
            
            <div class="header-icons">
                <a href="#"><i class="far fa-user"></i></a>
                <a href="#"><i class="far fa-heart"></i></a>
                <a href="#"><i class="fas fa-shopping-cart"></i><span class="cart-count">3</span></a>
                <button class="mobile-menu-btn" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Summer <span>Collection</span> 2025</h1>
            <p>Discover the latest trends in fashion, technology and accessories with up to 40% off selected items</p>
            <div class="hero-buttons">
                <a href="#" class="btn btn-primary">Shop Now <i class="fas fa-arrow-right"></i></a>
                <a href="#" class="btn btn-secondary">Explore Deals</a>
            </div>
        </div>
    </section>

    <!-- Categories Section -->
    <section class="container">
        <div class="section-title">
            <h2>Shop by Category</h2>
            <p>Browse through our wide range of products in different categories</p>
        </div>
        
        <div class="categories">
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-mobile-alt"></i></div>
                <h3>Smartphones</h3>
                <p>Latest models from top brands</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-laptop"></i></div>
                <h3>Laptops</h3>
                <p>Powerful machines for work & play</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-tshirt"></i></div>
                <h3>Clothing</h3>
                <p>Trendy outfits for every occasion</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-headphones"></i></div>
                <h3>Gadgets</h3>
                <p>Smart devices for modern life</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-shoe-prints"></i></div>
                <h3>Footwear</h3>
                <p>Comfortable & stylish shoes</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-watch"></i></div>
                <h3>Accessories</h3>
                <p>Complete your look</p>
            </div>
        </div>
    </section>

    <!-- Trending Products -->
    <section class="container">
        <div class="section-title">
            <h2>Trending Products</h2>
            <p>Discover what's popular right now</p>
        </div>
        
        <div class="products">
            <div class="product-card">
                <span class="product-badge">New</span>
                <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Smartphone" class="product-img">
                <div class="product-info">
                    <h3>iPhone 14 Pro Max</h3>
                    <div class="price">$1,099 <span class="old-price">$1,199</span></div>
                    <div class="rating">★★★★★ <span>(128)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Laptop" class="product-img">
                <div class="product-info">
                    <h3>MacBook Pro 14"</h3>
                    <div class="price">$1,999</div>
                    <div class="rating">★★★★☆ <span>(86)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <span class="product-badge">-25%</span>
                <img src="https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Smartwatch" class="product-img">
                <div class="product-info">
                    <h3>Apple Watch Series 8</h3>
                    <div class="price">$349 <span class="old-price">$399</span></div>
                    <div class="rating">★★★★★ <span>(214)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1542272604-787c3835535d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Sneakers" class="product-img">
                <div class="product-info">
                    <h3>Nike Air Max 270</h3>
                    <div class="price">$150</div>
                    <div class="rating">★★★★☆ <span>(53)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Camera" class="product-img">
                <div class="product-info">
                    <h3>Sony A7 IV Camera</h3>
                    <div class="price">$2,499</div>
                    <div class="rating">★★★★★ <span>(42)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <span class="product-badge">Bestseller</span>
                <img src="https://images.unsplash.com/photo-1585386959984-a4155224a1ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Perfume" class="product-img">
                <div class="product-info">
                    <h3>Chanel No. 5</h3>
                    <div class="price">$120</div>
                    <div class="rating">★★★★★ <span>(189)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1551232864-3f0890e580d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Backpack" class="product-img">
                <div class="product-info">
                    <h3>Travel Backpack</h3>
                    <div class="price">$79 <span class="old-price">$99</span></div>
                    <div class="rating">★★★★☆ <span>(67)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Headphones" class="product-img">
                <div class="product-info">
                    <h3>Sony WH-1000XM5</h3>
                    <div class="price">$399</div>
                    <div class="rating">★★★★★ <span>(156)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
        </div>
    </section>

    <!-- Deals Section -->
    <section class="deals">
        <div class="container">
            <div class="section-title">
                <h2>Flash Sale</h2>
                <p>Limited time offers — don't miss out!</p>
            </div>
            
            <div class="deal-container">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1200&q=80" alt="MacBook Deal" class="deal-img">
                <div class="deal-content">
                    <h3>MacBook Air M2</h3>
                    <p>The incredibly thin and light MacBook Air with the powerful M2 chip — now at an exclusive price.</p>
                    
                    <div class="deal-timer">
                        <div class="timer-box">
                            <span id="hours">24</span>
                            <span>Hours</span>
                        </div>
                        <div class="timer-box">
                            <span id="minutes">59</span>
                            <span>Minutes</span>
                        </div>
                        <div class="timer-box">
                            <span id="seconds">59</span>
                            <span>Seconds</span>
                        </div>
                    </div>
                    
                    <div class="deal-price">$999 <span class="deal-old-price">$1,199</span> <span class="deal-discount">-17%</span></div>
                    
                    <p>Only <strong style="color: #c9a03d;">12</strong> items left at this price!</p>
                    
                    <button class="btn btn-primary" style="padding: 16px 44px; margin-top: 24px;">Buy Now <i class="fas fa-bolt"></i></button>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="container testimonials">
        <div class="section-title">
            <h2>What Our Customers Say</h2>
            <p>Trusted by thousands of happy customers worldwide</p>
        </div>
        
        <div class="testimonial-slider">
            <div class="testimonial-card">
                <div class="rating">★★★★★</div>
                <p>"I've never had such a smooth shopping experience. The products are top quality and exactly as described. Delivery was super fast too!"</p>
                <div class="user-info">
                    <img src="https://randomuser.me/api/portraits/women/43.jpg" alt="Sarah J." class="user-avatar">
                    <div>
                        <div class="user-name">Sarah J.</div>
                        <div class="user-title">Verified Buyer</div>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="rating">★★★★☆</div>
                <p>"Great selection of products at competitive prices. Customer service was helpful when I had a question about my order."</p>
                <div class="user-info">
                    <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Michael T." class="user-avatar">
                    <div>
                        <div class="user-name">Michael T.</div>
                        <div class="user-title">Verified Buyer</div>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="rating">★★★★★</div>
                <p>"The flash deals are amazing! I got a brand new laptop for 25% off. Will definitely be shopping here again."</p>
                <div class="user-info">
                    <img src="https://randomuser.me/api/portraits/women/65.jpg" alt="Emma L." class="user-avatar">
                    <div>
                        <div class="user-name">Emma L.</div>
                        <div class="user-title">Verified Buyer</div>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="rating">★★★★★</div>
                <p>"Fast shipping and excellent packaging. The product exceeded my expectations. Highly recommend this store!"</p>
                <div class="user-info">
                    <img src="https://randomuser.me/api/portraits/men/75.jpg" alt="David K." class="user-avatar">
                    <div>
                        <div class="user-name">David K.</div>
                        <div class="user-title">Verified Buyer</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter Section -->
    <section class="newsletter">
        <div class="container">
            <h2>Stay Updated</h2>
            <p>Subscribe to our newsletter and get 10% off your first order plus exclusive access to sales and new arrivals.</p>
            <form class="newsletter-form">
                <input type="email" placeholder="Enter your email address" required>
                <button type="submit">Subscribe</button>
            </form>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-container">
                <div class="footer-col">
                    <h3>NexusShop</h3>
                    <p style="margin-bottom: 8px;">Your one-stop destination for all the latest products in technology, fashion, and lifestyle.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-col">
                    <h3>Shop</h3>
                    <ul>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> All Products</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Featured Items</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> New Arrivals</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> On Sale</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Gift Cards</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h3>Customer Service</h3>
                    <ul>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Contact Us</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> FAQs</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Shipping Policy</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Returns & Exchanges</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Track Order</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h3>About</h3>
                    <ul>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Our Story</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Careers</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Privacy Policy</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Terms of Service</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Blog</a></li>
                    </ul>
                    <div class="payment-methods">
                        <img src="https://cdn-icons-png.flaticon.com/512/196/196578.png" alt="Visa">
                        <img src="https://cdn-icons-png.flaticon.com/512/196/196561.png" alt="Mastercard">
                        <img src="https://cdn-icons-png.flaticon.com/512/196/196566.png" alt="American Express">
                        <img src="https://cdn-icons-png.flaticon.com/512/825/825454.png" alt="PayPal">
                    </div>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; 2025 NexusShop. All rights reserved. Crafted with elegance.</p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile Menu Toggle
        const mobileMenuBtn = document.getElementById('mobileMenuBtn');
        const mainNav = document.getElementById('mainNav');
        
        mobileMenuBtn.addEventListener('click', () => {
            mainNav.classList.toggle('active');
        });
        
        // Dropdown Toggle for Mobile
        const dropdowns = document.querySelectorAll('.dropdown');
        
        dropdowns.forEach(dropdown => {
            dropdown.addEventListener('click', (e) => {
                if (window.innerWidth <= 768) {
                    e.preventDefault();
                    dropdown.classList.toggle('active');
                }
            });
        });
        
        // Countdown Timer
        function updateCountdown() {
            const now = new Date();
            const endOfDay = new Date();
            endOfDay.setHours(23, 59, 59, 999);
            
            const diff = endOfDay - now;
            
            const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((diff % (1000 * 60)) / 1000);
            
            document.getElementById('hours').textContent = String(hours).padStart(2, '0');
            document.getElementById('minutes').textContent = String(minutes).padStart(2, '0');
            document.getElementById('seconds').textContent = String(seconds).padStart(2, '0');
        }
        
        setInterval(updateCountdown, 1000);
        updateCountdown();
        
        // Add to Cart Animation
        const addToCartButtons = document.querySelectorAll('.add-to-cart');
        const cartCount = document.querySelector('.cart-count');
        
        addToCartButtons.forEach(button => {
            button.addEventListener('click', () => {
                button.textContent = '✓ Added';
                button.style.background = 'linear-gradient(135deg, #1e7e34, #28a745)';
                button.style.color = 'white';
                button.style.borderColor = 'transparent';
                
                const currentCount = parseInt(cartCount.textContent);
                cartCount.textContent = currentCount + 1;
                
                setTimeout(() => {
                    button.textContent = 'Add to Cart';
                    button.style.background = 'var(--primary-deep)';
                    button.style.color = 'white';
                }, 1200);
            });
        });
        
        // Testimonial Slider (drag scroll)
        const testimonialSlider = document.querySelector('.testimonial-slider');
        let isDown = false;
        let startX;
        let scrollLeft;
        
        testimonialSlider.addEventListener('mousedown', (e) => {
            isDown = true;
            testimonialSlider.style.cursor = 'grabbing';
            startX = e.pageX - testimonialSlider.offsetLeft;
            scrollLeft = testimonialSlider.scrollLeft;
        });
        
        testimonialSlider.addEventListener('mouseleave', () => {
            isDown = false;
            testimonialSlider.style.cursor = 'grab';
        });
        
        testimonialSlider.addEventListener('mouseup', () => {
            isDown = false;
            testimonialSlider.style.cursor = 'grab';
        });
        
        testimonialSlider.addEventListener('mousemove', (e) => {
            if(!isDown) return;
            e.preventDefault();
            const x = e.pageX - testimonialSlider.offsetLeft;
            const walk = (x - startX) * 2;
            testimonialSlider.scrollLeft = scrollLeft - walk;
        });
    </script>
</body>
</html>
