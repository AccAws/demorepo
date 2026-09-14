<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop · Forever Faster</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Barlow+Condensed:wght@400;500;600;700;800&family=Barlow:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --puma-black: #000000;
            --puma-dark: #1a1a1a;
            --puma-gray: #2e2e2e;
            --puma-red: #e10600;
            --puma-red-dark: #b80500;
            --puma-white: #ffffff;
            --puma-off-white: #f5f5f5;
            --puma-light-gray: #e0e0e0;
            --puma-mid-gray: #767676;
            --puma-blue: #0057b8;
            --success: #3d8b40;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Barlow', sans-serif;
            background-color: var(--puma-white);
            color: var(--puma-black);
            line-height: 1.5;
            overflow-x: hidden;
        }

        h1, h2, h3, h4, .logo, .section-title h2 {
            font-family: 'Barlow Condensed', sans-serif;
            font-weight: 700;
            letter-spacing: 0.01em;
            text-transform: uppercase;
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* ---------- PUMA HEADER ---------- */
        header {
            background: var(--puma-white);
            position: sticky;
            top: 0;
            z-index: 1000;
            border-bottom: 1px solid var(--puma-light-gray);
            transition: all 0.3s;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 14px 0;
            position: relative;
        }

        .logo {
            font-size: 38px;
            font-weight: 800;
            color: var(--puma-black);
            text-decoration: none;
            letter-spacing: 0.04em;
            font-family: 'Barlow Condensed', sans-serif;
            display: flex;
            align-items: center;
            gap: 6px;
            line-height: 1;
        }

        .logo span {
            color: var(--puma-red);
            font-style: italic;
        }

        .logo i {
            font-size: 22px;
            color: var(--puma-black);
            margin-right: 2px;
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 0;
        }

        nav ul li a {
            text-decoration: none;
            color: var(--puma-black);
            font-weight: 600;
            font-size: 14px;
            padding: 10px 22px;
            letter-spacing: 0.08em;
            text-transform: uppercase;
            transition: all 0.3s;
            display: flex;
            align-items: center;
            gap: 6px;
            font-family: 'Barlow Condensed', sans-serif;
            position: relative;
            border-bottom: 3px solid transparent;
        }

        nav ul li a i {
            font-size: 11px;
            color: var(--puma-mid-gray);
            transition: all 0.3s;
        }

        nav ul li a:hover {
            color: var(--puma-red);
            border-bottom-color: var(--puma-red);
        }

        nav ul li a:hover i {
            color: var(--puma-red);
        }

        .dropdown {
            position: relative;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background: var(--puma-white);
            min-width: 260px;
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15);
            border-top: 4px solid var(--puma-red);
            padding: 16px 0;
            top: 100%;
            left: 0;
            z-index: 100;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown-content a {
            padding: 12px 24px;
            display: flex;
            align-items: center;
            gap: 14px;
            color: var(--puma-black);
            font-size: 13px;
            letter-spacing: 0.06em;
            border-bottom: none;
            font-weight: 500;
        }

        .dropdown-content a i {
            color: var(--puma-red);
            font-size: 14px;
            width: 20px;
            text-align: center;
            transition: all 0.3s;
        }

        .dropdown-content a:hover {
            background: var(--puma-off-white);
            color: var(--puma-red);
        }

        .dropdown-content a:hover i {
            transform: translateX(4px);
        }

        .search-bar {
            display: flex;
            align-items: center;
            background: var(--puma-off-white);
            border-radius: 0;
            padding: 0;
            width: 240px;
            border: 1px solid var(--puma-light-gray);
            transition: all 0.3s;
        }

        .search-bar:focus-within {
            border-color: var(--puma-black);
        }

        .search-bar input {
            border: none;
            background: transparent;
            width: 100%;
            padding: 12px 16px;
            outline: none;
            font-size: 13px;
            letter-spacing: 0.04em;
            color: var(--puma-black);
            font-family: 'Barlow', sans-serif;
        }

        .search-bar input::placeholder {
            color: var(--puma-mid-gray);
            text-transform: uppercase;
            font-size: 11px;
            letter-spacing: 0.1em;
            font-weight: 500;
        }

        .search-bar button {
            background: var(--puma-black);
            border: none;
            color: var(--puma-white);
            width: 44px;
            height: 44px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.3s;
            font-size: 14px;
        }

        .search-bar button:hover {
            background: var(--puma-red);
        }

        .header-icons {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .header-icons a {
            color: var(--puma-black);
            font-size: 18px;
            transition: all 0.3s;
            position: relative;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .header-icons a:hover {
            color: var(--puma-red);
            transform: translateY(-2px);
        }

        .cart-count {
            position: absolute;
            top: 0;
            right: 0;
            background: var(--puma-red);
            color: var(--puma-white);
            border-radius: 50%;
            width: 18px;
            height: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 10px;
            font-weight: 700;
            border: 2px solid var(--puma-white);
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 24px;
            color: var(--puma-black);
            cursor: pointer;
            transition: all 0.3s;
        }

        .mobile-menu-btn:hover {
            color: var(--puma-red);
        }

        /* ---------- HERO / RUNNING ---------- */
        .hero {
            min-height: 640px;
            background: linear-gradient(105deg, rgba(0, 0, 0, 0.85) 0%, rgba(0, 0, 0, 0.6) 50%, rgba(0, 0, 0, 0.3) 100%), 
                        url('https://images.unsplash.com/photo-1552674605-db6ffd4facb5?q=80&w=2070&auto=format&fit=crop') center/cover no-repeat;
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
            height: 8px;
            background: var(--puma-red);
            z-index: 10;
        }

        .hero-content {
            max-width: 680px;
            margin-left: 6%;
            padding: 80px 0;
            position: relative;
            z-index: 3;
            color: var(--puma-white);
        }

        .hero-tag {
            display: inline-block;
            background: var(--puma-red);
            color: var(--puma-white);
            font-family: 'Barlow Condensed', sans-serif;
            font-size: 13px;
            font-weight: 700;
            letter-spacing: 0.2em;
            text-transform: uppercase;
            padding: 6px 16px;
            margin-bottom: 24px;
        }

        .hero h1 {
            font-size: 86px;
            line-height: 0.95;
            margin-bottom: 24px;
            font-weight: 800;
            letter-spacing: -0.01em;
            text-transform: uppercase;
        }

        .hero h1 span {
            color: var(--puma-red);
            display: block;
            font-style: italic;
        }

        .hero p {
            font-size: 18px;
            margin-bottom: 40px;
            opacity: 0.9;
            font-weight: 400;
            max-width: 520px;
            letter-spacing: 0.02em;
            line-height: 1.7;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            padding: 16px 40px;
            font-weight: 700;
            text-decoration: none;
            transition: all 0.3s ease;
            font-size: 14px;
            letter-spacing: 0.12em;
            text-transform: uppercase;
            border: 2px solid transparent;
            font-family: 'Barlow Condensed', sans-serif;
            cursor: pointer;
        }

        .btn-primary {
            background: var(--puma-red);
            color: var(--puma-white);
            border-color: var(--puma-red);
        }

        .btn-primary:hover {
            background: var(--puma-red-dark);
            border-color: var(--puma-red-dark);
            transform: translateY(-3px);
            box-shadow: 0 16px 30px -8px rgba(225, 6, 0, 0.5);
        }

        .btn-secondary {
            background: transparent;
            color: var(--puma-white);
            border: 2px solid var(--puma-white);
        }

        .btn-secondary:hover {
            background: var(--puma-white);
            color: var(--puma-black);
            transform: translateY(-3px);
        }

        /* ---------- SECTION TITLES ---------- */
        .section-title {
            text-align: center;
            margin: 80px 0 48px;
        }

        .section-title h2 {
            font-size: 48px;
            color: var(--puma-black);
            margin-bottom: 12px;
            font-weight: 800;
            letter-spacing: 0.02em;
            position: relative;
            display: inline-block;
        }

        .section-title h2::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 4px;
            background: var(--puma-red);
        }

        .section-title p {
            color: var(--puma-mid-gray);
            font-size: 16px;
            max-width: 560px;
            margin: 20px auto 0;
            font-weight: 400;
            letter-spacing: 0.02em;
        }

        /* ---------- CATEGORIES / SPORTS ---------- */
        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
            margin-bottom: 80px;
        }

        .category-card {
            background: var(--puma-off-white);
            padding: 40px 16px 36px;
            text-align: center;
            transition: all 0.4s cubic-bezier(0.2, 0.9, 0.3, 1);
            position: relative;
            overflow: hidden;
            cursor: pointer;
            border-bottom: 4px solid transparent;
        }

        .category-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: var(--puma-black);
            transform: translateY(100%);
            transition: transform 0.4s cubic-bezier(0.2, 0.9, 0.3, 1);
            z-index: 0;
        }

        .category-card:hover::before {
            transform: translateY(0);
        }

        .category-card:hover {
            border-bottom-color: var(--puma-red);
        }

        .category-card > * {
            position: relative;
            z-index: 1;
            transition: color 0.3s;
        }

        .category-card:hover .category-icon,
        .category-card:hover h3,
        .category-card:hover p {
            color: var(--puma-white);
        }

        .category-icon {
            font-size: 42px;
            margin-bottom: 18px;
            color: var(--puma-red);
            transition: all 0.4s;
        }

        .category-card:hover .category-icon {
            transform: translateY(-6px) scale(1.1);
        }

        .category-card h3 {
            font-size: 18px;
            font-weight: 700;
            color: var(--puma-black);
            margin-bottom: 8px;
            font-family: 'Barlow Condensed', sans-serif;
            letter-spacing: 0.06em;
            transition: color 0.3s;
        }

        .category-card p {
            color: var(--puma-mid-gray);
            font-size: 13px;
            font-weight: 400;
            letter-spacing: 0.02em;
            line-height: 1.5;
            transition: color 0.3s;
        }

        /* ---------- PRODUCTS / GEAR ---------- */
        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
            margin-bottom: 80px;
        }

        .product-card {
            background: var(--puma-white);
            overflow: hidden;
            transition: all 0.4s cubic-bezier(0.2, 0.9, 0.3, 1);
            position: relative;
            border: 1px solid var(--puma-light-gray);
        }

        .product-card:hover {
            box-shadow: 0 24px 48px -16px rgba(0, 0, 0, 0.2);
            transform: translateY(-6px);
            border-color: transparent;
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--puma-red);
            color: var(--puma-white);
            padding: 5px 14px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.14em;
            text-transform: uppercase;
            z-index: 5;
            font-family: 'Barlow Condensed', sans-serif;
        }

        .product-badge.new {
            background: var(--puma-black);
        }

        .product-badge.sale {
            background: var(--puma-red);
        }

        .product-img-wrapper {
            overflow: hidden;
            background: var(--puma-off-white);
            position: relative;
        }

        .product-img {
            width: 100%;
            height: 260px;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.2, 0.9, 0.3, 1);
            mix-blend-mode: multiply;
        }

        .product-card:hover .product-img {
            transform: scale(1.08);
        }

        .product-info {
            padding: 20px 20px 24px;
        }

        .product-info h3 {
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 8px;
            color: var(--puma-black);
            font-family: 'Barlow Condensed', sans-serif;
            letter-spacing: 0.04em;
        }

        .product-info .price {
            font-weight: 700;
            color: var(--puma-black);
            font-size: 20px;
            margin-bottom: 6px;
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Barlow', sans-serif;
        }

        .product-info .old-price {
            text-decoration: line-through;
            color: var(--puma-mid-gray);
            font-size: 15px;
            font-weight: 400;
        }

        .product-info .rating {
            color: var(--puma-red);
            margin-bottom: 16px;
            font-size: 13px;
            letter-spacing: 2px;
        }

        .product-info .rating span {
            color: var(--puma-mid-gray);
            font-size: 12px;
            letter-spacing: 0.02em;
            margin-left: 6px;
            font-weight: 500;
        }

        .add-to-cart {
            width: 100%;
            padding: 12px 0;
            background: var(--puma-black);
            color: var(--puma-white);
            border: 2px solid var(--puma-black);
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 700;
            font-size: 13px;
            letter-spacing: 0.14em;
            text-transform: uppercase;
            font-family: 'Barlow Condensed', sans-serif;
        }

        .add-to-cart:hover {
            background: var(--puma-red);
            border-color: var(--puma-red);
            color: var(--puma-white);
        }

        /* ---------- DEAL / FLASH SALE ---------- */
        .deals {
            background: var(--puma-black);
            padding: 80px 0;
            margin-bottom: 80px;
            position: relative;
            overflow: hidden;
        }

        .deals::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: repeating-linear-gradient(
                90deg,
                transparent,
                transparent 40px,
                rgba(225, 6, 0, 0.03) 40px,
                rgba(225, 6, 0, 0.03) 80px
            );
            pointer-events: none;
        }

        .deals .section-title h2 {
            color: var(--puma-white);
        }

        .deals .section-title h2::after {
            background: var(--puma-red);
        }

        .deals .section-title p {
            color: rgba(255, 255, 255, 0.6);
        }

        .deal-container {
            display: flex;
            align-items: center;
            background: var(--puma-dark);
            position: relative;
            overflow: hidden;
            border: 1px solid rgba(255, 255, 255, 0.08);
        }

        .deal-img {
            width: 50%;
            height: 520px;
            object-fit: cover;
            filter: brightness(0.9);
            transition: all 0.6s;
        }

        .deal-container:hover .deal-img {
            filter: brightness(1);
            transform: scale(1.02);
        }

        .deal-content {
            width: 50%;
            padding: 56px 48px;
            position: relative;
            z-index: 2;
        }

        .deal-tag {
            display: inline-block;
            background: var(--puma-red);
            color: var(--puma-white);
            font-family: 'Barlow Condensed', sans-serif;
            font-size: 12px;
            font-weight: 700;
            letter-spacing: 0.2em;
            text-transform: uppercase;
            padding: 5px 14px;
            margin-bottom: 18px;
        }

        .deal-content h3 {
            font-size: 44px;
            color: var(--puma-white);
            margin-bottom: 14px;
            font-weight: 800;
            letter-spacing: 0.02em;
        }

        .deal-content h3 span {
            color: var(--puma-red);
            font-style: italic;
        }

        .deal-content > p {
            color: rgba(255, 255, 255, 0.6);
            font-size: 16px;
            margin-bottom: 32px;
            font-weight: 400;
            letter-spacing: 0.02em;
            line-height: 1.7;
        }

        .deal-timer {
            display: flex;
            gap: 16px;
            margin: 32px 0 36px;
        }

        .timer-box {
            text-align: center;
            background: var(--puma-white);
            color: var(--puma-black);
            padding: 14px 10px;
            min-width: 80px;
            transition: all 0.3s;
        }

        .timer-box:hover {
            background: var(--puma-red);
            color: var(--puma-white);
        }

        .timer-box span:first-child {
            font-size: 32px;
            font-weight: 800;
            display: block;
            line-height: 1.2;
            font-family: 'Barlow Condensed', sans-serif;
        }

        .timer-box span:last-child {
            font-size: 10px;
            opacity: 0.6;
            text-transform: uppercase;
            letter-spacing: 0.18em;
            font-weight: 600;
            font-family: 'Barlow', sans-serif;
        }

        .deal-price {
            font-size: 40px;
            font-weight: 800;
            color: var(--puma-white);
            margin-bottom: 16px;
            display: flex;
            align-items: center;
            gap: 14px;
            flex-wrap: wrap;
            font-family: 'Barlow Condensed', sans-serif;
        }

        .deal-old-price {
            text-decoration: line-through;
            color: rgba(255, 255, 255, 0.3);
            font-size: 22px;
            font-weight: 400;
        }

        .deal-discount {
            background: var(--puma-red);
            color: var(--puma-white);
            padding: 5px 14px;
            font-size: 13px;
            font-weight: 700;
            letter-spacing: 0.1em;
            text-transform: uppercase;
            font-family: 'Barlow Condensed', sans-serif;
        }

        .deal-content .btn-primary {
            padding: 18px 48px;
            font-size: 15px;
        }

        /* ---------- TESTIMONIALS / TEAM ---------- */
        .testimonials {
            margin-bottom: 80px;
        }

        .testimonial-slider {
            display: flex;
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            gap: 24px;
            padding: 30px 8px 50px;
            scrollbar-width: none;
            cursor: grab;
        }

        .testimonial-slider::-webkit-scrollbar {
            display: none;
        }

        .testimonial-card {
            min-width: 360px;
            background: var(--puma-off-white);
            padding: 36px 32px;
            scroll-snap-align: start;
            border-bottom: 4px solid transparent;
            transition: all 0.4s;
            position: relative;
        }

        .testimonial-card:hover {
            border-bottom-color: var(--puma-red);
            box-shadow: 0 20px 40px -16px rgba(0, 0, 0, 0.15);
            transform: translateY(-4px);
        }

        .testimonial-card .rating {
            color: var(--puma-red);
            margin-bottom: 20px;
            font-size: 14px;
            letter-spacing: 3px;
        }

        .testimonial-card p {
            font-style: normal;
            margin-bottom: 28px;
            font-size: 15px;
            line-height: 1.7;
            color: var(--puma-gray);
            font-weight: 400;
            letter-spacing: 0.01em;
        }

        .user-info {
            display: flex;
            align-items: center;
        }

        .user-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 16px;
            border: 3px solid var(--puma-red);
            padding: 2px;
        }

        .user-name {
            font-weight: 700;
            color: var(--puma-black);
            font-size: 15px;
            letter-spacing: 0.04em;
            text-transform: uppercase;
            font-family: 'Barlow Condensed', sans-serif;
        }

        .user-title {
            color: var(--puma-mid-gray);
            font-size: 12px;
            font-weight: 500;
            letter-spacing: 0.04em;
        }

        /* ---------- NEWSLETTER / SIGN UP ---------- */
        .newsletter {
            background: var(--puma-black);
            color: var(--puma-white);
            padding: 80px 0;
            text-align: center;
            margin-bottom: 80px;
            position: relative;
            overflow: hidden;
        }

        .newsletter::before {
            content: 'FOREVER FASTER';
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-family: 'Barlow Condensed', sans-serif;
            font-size: 180px;
            font-weight: 800;
            color: rgba(255, 255, 255, 0.02);
            letter-spacing: 0.1em;
            white-space: nowrap;
            pointer-events: none;
        }

        .newsletter h2 {
            font-size: 48px;
            margin-bottom: 16px;
            color: var(--puma-white);
            position: relative;
            z-index: 2;
            font-weight: 800;
            letter-spacing: 0.04em;
        }

        .newsletter h2 span {
            color: var(--puma-red);
            font-style: italic;
        }

        .newsletter p {
            max-width: 520px;
            margin: 0 auto 36px;
            opacity: 0.7;
            font-size: 16px;
            font-weight: 400;
            letter-spacing: 0.02em;
            line-height: 1.7;
            position: relative;
            z-index: 2;
        }

        .newsletter-form {
            display: flex;
            max-width: 540px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
            border: 2px solid rgba(255, 255, 255, 0.15);
            transition: border-color 0.3s;
        }

        .newsletter-form:focus-within {
            border-color: var(--puma-red);
        }

        .newsletter-form input {
            flex: 1;
            padding: 18px 24px;
            border: none;
            outline: none;
            font-size: 14px;
            background: transparent;
            color: var(--puma-white);
            font-family: 'Barlow', sans-serif;
            letter-spacing: 0.04em;
        }

        .newsletter-form input::placeholder {
            color: rgba(255, 255, 255, 0.4);
            text-transform: uppercase;
            font-size: 12px;
            letter-spacing: 0.12em;
            font-weight: 500;
        }

        .newsletter-form button {
            padding: 0 44px;
            background: var(--puma-red);
            color: var(--puma-white);
            border: none;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.3s;
            font-size: 13px;
            letter-spacing: 0.18em;
            text-transform: uppercase;
            font-family: 'Barlow Condensed', sans-serif;
            white-space: nowrap;
        }

        .newsletter-form button:hover {
            background: var(--puma-red-dark);
            letter-spacing: 0.24em;
        }

        /* ---------- FOOTER ---------- */
        footer {
            background: var(--puma-black);
            color: rgba(255, 255, 255, 0.5);
            padding: 64px 0 24px;
            border-top: 4px solid var(--puma-red);
        }

        .footer-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 48px;
            margin-bottom: 48px;
        }

        .footer-col h3 {
            font-size: 18px;
            color: var(--puma-white);
            margin-bottom: 24px;
            position: relative;
            padding-bottom: 12px;
            font-family: 'Barlow Condensed', sans-serif;
            letter-spacing: 0.1em;
            text-transform: uppercase;
            font-weight: 700;
        }

        .footer-col h3::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            width: 40px;
            height: 3px;
            background: var(--puma-red);
        }

        .footer-col ul {
            list-style: none;
        }

        .footer-col ul li {
            margin-bottom: 12px;
        }

        .footer-col ul li a {
            color: rgba(255, 255, 255, 0.5);
            text-decoration: none;
            transition: all 0.3s;
            font-weight: 400;
            font-size: 14px;
            letter-spacing: 0.02em;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .footer-col ul li a i {
            color: var(--puma-red);
            font-size: 10px;
            transition: transform 0.3s;
        }

        .footer-col ul li a:hover {
            color: var(--puma-white);
            padding-left: 4px;
        }

        .footer-col ul li a:hover i {
            transform: translateX(4px);
        }

        .footer-col p {
            font-size: 14px;
            line-height: 1.7;
            font-weight: 400;
            letter-spacing: 0.02em;
        }

        .social-links {
            display: flex;
            gap: 12px;
            margin-top: 24px;
        }

        .social-links a {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 42px;
            height: 42px;
            background: rgba(255, 255, 255, 0.06);
            color: var(--puma-white);
            transition: all 0.3s ease;
            border: 1px solid rgba(255, 255, 255, 0.1);
            font-size: 16px;
        }

        .social-links a:hover {
            background: var(--puma-red);
            border-color: var(--puma-red);
            transform: translateY(-4px);
            box-shadow: 0 12px 24px -8px rgba(225, 6, 0, 0.5);
        }

        .payment-methods {
            display: flex;
            gap: 12px;
            margin-top: 24px;
        }

        .payment-methods img {
            height: 24px;
            filter: brightness(0) invert(1);
            opacity: 0.4;
            transition: all 0.3s;
        }

        .payment-methods img:hover {
            opacity: 1;
            transform: scale(1.1);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 24px;
            border-top: 1px solid rgba(255, 255, 255, 0.08);
            color: rgba(255, 255, 255, 0.3);
            font-size: 12px;
            letter-spacing: 0.1em;
            text-transform: uppercase;
            font-weight: 500;
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 1200px) {
            .container {
                padding: 0 24px;
            }
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
                height: 380px;
            }
            .hero h1 {
                font-size: 66px;
            }
        }

        @media (max-width: 992px) {
            .footer-container {
                grid-template-columns: repeat(2, 1fr);
            }
            .hero h1 {
                font-size: 54px;
            }
            .section-title h2 {
                font-size: 40px;
            }
            .deal-content {
                padding: 44px 36px;
            }
            .deal-content h3 {
                font-size: 36px;
            }
        }

        @media (max-width: 768px) {
            .container {
                padding: 0 20px;
            }
            .header-container {
                flex-wrap: wrap;
            }
            .search-bar {
                order: 3;
                width: 100%;
                margin-top: 14px;
            }
            .categories {
                grid-template-columns: repeat(2, 1fr);
            }
            .products {
                grid-template-columns: repeat(2, 1fr);
            }
            .hero h1 {
                font-size: 42px;
            }
            .hero p {
                font-size: 16px;
            }
            .hero-content {
                margin-left: 4%;
                padding: 70px 0;
            }
            .mobile-menu-btn {
                display: block;
            }
            nav {
                display: none;
                width: 100%;
                order: 4;
                margin-top: 14px;
            }
            nav.active {
                display: block;
            }
            nav ul {
                flex-direction: column;
                gap: 0;
            }
            nav ul li a {
                padding: 14px 0;
                border-bottom: 1px solid var(--puma-light-gray);
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
            .testimonial-card {
                min-width: 300px;
                padding: 28px 24px;
            }
            .newsletter h2 {
                font-size: 36px;
            }
            .newsletter::before {
                font-size: 100px;
            }
            .newsletter-form {
                flex-direction: column;
                border: none;
                gap: 12px;
            }
            .newsletter-form input {
                border: 2px solid rgba(255, 255, 255, 0.15);
                padding: 18px 24px;
            }
            .newsletter-form button {
                padding: 18px 24px;
            }
        }

        @media (max-width: 576px) {
            .categories, .products {
                grid-template-columns: 1fr;
            }
            .footer-container {
                grid-template-columns: 1fr;
            }
            .hero h1 {
                font-size: 36px;
            }
            .deal-timer {
                flex-wrap: wrap;
            }
            .deal-price {
                font-size: 30px;
            }
            .section-title h2 {
                font-size: 32px;
            }
            .container {
                padding: 0 16px;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container header-container">
            <a href="#" class="logo"><i class="fas fa-bolt"></i> Nexus<span>Shop</span></a>
            
            <nav id="mainNav">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li class="dropdown">
                        <a href="#"><i class="fas fa-th-large"></i> Sports <i class="fas fa-chevron-down" style="font-size: 9px;"></i></a>
                        <div class="dropdown-content">
                            <a href="#"><i class="fas fa-running"></i> Running</a>
                            <a href="#"><i class="fas fa-basketball-ball"></i> Basketball</a>
                            <a href="#"><i class="fas fa-futbol"></i> Football</a>
                            <a href="#"><i class="fas fa-dumbbell"></i> Training</a>
                            <a href="#"><i class="fas fa-biking"></i> Cycling</a>
                            <a href="#"><i class="fas fa-swimmer"></i> Swimming</a>
                        </div>
                    </li>
                    <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#"><i class="fas fa-percent"></i> Deals</a></li>
                    <li><a href="#"><i class="fas fa-info-circle"></i> About</a></li>
                    <li><a href="#"><i class="fas fa-envelope"></i> Contact</a></li>
                </ul>
            </nav>
            
            <div class="search-bar">
                <input type="text" placeholder="Search products...">
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
            <span class="hero-tag">New Collection 2025</span>
            <h1>Forever <span>Faster</span></h1>
            <p>Discover the latest trends in sportswear, technology and accessories with up to 40% off selected items</p>
            <div class="hero-buttons">
                <a href="#" class="btn btn-primary">Shop Now <i class="fas fa-arrow-right" style="font-size: 11px;"></i></a>
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
                <span class="product-badge new">New</span>
                <div class="product-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Smartphone" class="product-img">
                </div>
                <div class="product-info">
                    <h3>iPhone 14 Pro Max</h3>
                    <div class="price">$1,099 <span class="old-price">$1,199</span></div>
                    <div class="rating">★★★★★ <span>(128)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <div class="product-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Laptop" class="product-img">
                </div>
                <div class="product-info">
                    <h3>MacBook Pro 14"</h3>
                    <div class="price">$1,999</div>
                    <div class="rating">★★★★☆ <span>(86)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <span class="product-badge sale">-25%</span>
                <div class="product-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Smartwatch" class="product-img">
                </div>
                <div class="product-info">
                    <h3>Apple Watch Series 8</h3>
                    <div class="price">$349 <span class="old-price">$399</span></div>
                    <div class="rating">★★★★★ <span>(214)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <div class="product-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1542272604-787c3835535d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Sneakers" class="product-img">
                </div>
                <div class="product-info">
                    <h3>Nike Air Max 270</h3>
                    <div class="price">$150</div>
                    <div class="rating">★★★★☆ <span>(53)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <div class="product-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Camera" class="product-img">
                </div>
                <div class="product-info">
                    <h3>Sony A7 IV Camera</h3>
                    <div class="price">$2,499</div>
                    <div class="rating">★★★★★ <span>(42)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <span class="product-badge new">Bestseller</span>
                <div class="product-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1585386959984-a4155224a1ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Perfume" class="product-img">
                </div>
                <div class="product-info">
                    <h3>Chanel No. 5</h3>
                    <div class="price">$120</div>
                    <div class="rating">★★★★★ <span>(189)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <div class="product-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1551232864-3f0890e580d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Backpack" class="product-img">
                </div>
                <div class="product-info">
                    <h3>Travel Backpack</h3>
                    <div class="price">$79 <span class="old-price">$99</span></div>
                    <div class="rating">★★★★☆ <span>(67)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <div class="product-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Headphones" class="product-img">
                </div>
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
                    <span class="deal-tag">Limited Edition</span>
                    <h3>MacBook <span>Air M2</span></h3>
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
                    
                    <p>Only <strong style="color: var(--puma-red);">12</strong> items left at this price!</p>
                    
                    <button class="btn btn-primary" style="padding: 18px 48px; margin-top: 24px;">Buy Now <i class="fas fa-bolt" style="font-size: 12px;"></i></button>
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
            <h2>Stay <span>Updated</span></h2>
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
                    <p>Your one-stop destination for all the latest products in technology, fashion, and lifestyle.</p>
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
                <p>&copy; 2025 NexusShop. All rights reserved. Forever Faster.</p>
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
                button.style.background = 'var(--puma-red)';
                button.style.borderColor = 'var(--puma-red)';
                button.style.color = 'var(--puma-white)';
                
                const currentCount = parseInt(cartCount.textContent);
                cartCount.textContent = currentCount + 1;
                
                setTimeout(() => {
                    button.textContent = 'Add to Cart';
                    button.style.background = 'var(--puma-black)';
                    button.style.borderColor = 'var(--puma-black)';
                }, 1000);
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
