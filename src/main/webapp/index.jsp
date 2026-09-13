<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop · Maison de Luxe</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;0,700;1,400&family=Jost:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --noir: #0a0a0a;
            --noir-soft: #121212;
            --charcoal: #1c1c1c;
            --gold: #c6a15b;
            --gold-light: #e8d5a7;
            --gold-dark: #9e7e42;
            --ivory: #f6f2ea;
            --parchment: #efe9dd;
            --warm-white: #fdfbf7;
            --taupe: #8b7e6a;
            --smoke: #2e2e2e;
            --silver: #b8b8b8;
            --success: #3d6b4f;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Jost', sans-serif;
            background-color: var(--warm-white);
            color: var(--noir);
            line-height: 1.6;
            font-weight: 400;
            overflow-x: hidden;
        }

        h1, h2, h3, h4, .logo, .section-title h2, .hero h1 {
            font-family: 'Cormorant Garamond', serif;
            font-weight: 500;
            letter-spacing: 0.02em;
        }

        .container {
            max-width: 1440px;
            margin: 0 auto;
            padding: 0 40px;
        }

        /* ---------- ULTRA LUXE HEADER ---------- */
        header {
            background: var(--noir);
            position: sticky;
            top: 0;
            z-index: 1000;
            border-bottom: 1px solid rgba(198, 161, 91, 0.25);
            transition: all 0.4s;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 18px 0;
            position: relative;
        }

        .logo {
            font-size: 32px;
            font-weight: 600;
            color: var(--ivory);
            text-decoration: none;
            letter-spacing: 0.12em;
            text-transform: uppercase;
            font-family: 'Cormorant Garamond', serif;
            position: relative;
            padding-left: 12px;
        }

        .logo::before {
            content: '◆';
            position: absolute;
            left: -8px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 12px;
            color: var(--gold);
            opacity: 0.7;
        }

        .logo span {
            color: var(--gold);
            font-weight: 400;
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 4px;
        }

        nav ul li a {
            text-decoration: none;
            color: var(--ivory);
            font-weight: 400;
            font-size: 12px;
            padding: 8px 22px;
            letter-spacing: 0.14em;
            text-transform: uppercase;
            transition: all 0.4s;
            display: flex;
            align-items: center;
            gap: 8px;
            border-bottom: 1px solid transparent;
            font-family: 'Jost', sans-serif;
        }

        nav ul li a i {
            color: var(--gold);
            font-size: 10px;
            opacity: 0.7;
            transition: all 0.3s;
        }

        nav ul li a:hover {
            color: var(--gold);
            border-bottom-color: var(--gold);
        }

        nav ul li a:hover i {
            opacity: 1;
            transform: translateY(-1px);
        }

        .dropdown {
            position: relative;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background: var(--noir-soft);
            min-width: 260px;
            box-shadow: 0 30px 60px rgba(0, 0, 0, 0.6);
            border: 1px solid rgba(198, 161, 91, 0.2);
            padding: 18px 0;
            top: 100%;
            left: 0;
            z-index: 100;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown-content a {
            padding: 12px 28px;
            display: flex;
            align-items: center;
            gap: 14px;
            color: var(--ivory);
            font-size: 11px;
            letter-spacing: 0.12em;
            border-bottom: none;
            text-transform: uppercase;
        }

        .dropdown-content a i {
            color: var(--gold);
            font-size: 12px;
            width: 18px;
            text-align: center;
        }

        .dropdown-content a:hover {
            background: rgba(198, 161, 91, 0.08);
            color: var(--gold);
        }

        .search-bar {
            display: flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.04);
            border-radius: 0;
            padding: 4px 4px 4px 20px;
            width: 260px;
            border: 1px solid rgba(198, 161, 91, 0.3);
            transition: all 0.4s;
        }

        .search-bar:focus-within {
            border-color: var(--gold);
            background: rgba(255, 255, 255, 0.07);
        }

        .search-bar input {
            border: none;
            background: transparent;
            width: 100%;
            padding: 10px 0;
            outline: none;
            font-size: 12px;
            letter-spacing: 0.08em;
            color: var(--ivory);
            font-family: 'Jost', sans-serif;
            text-transform: uppercase;
        }

        .search-bar input::placeholder {
            color: rgba(246, 242, 234, 0.4);
            letter-spacing: 0.1em;
            font-size: 11px;
        }

        .search-bar button {
            background: transparent;
            border: none;
            color: var(--gold);
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.3s;
            font-size: 14px;
        }

        .search-bar button:hover {
            color: var(--ivory);
            transform: scale(1.1);
        }

        .header-icons {
            display: flex;
            align-items: center;
            gap: 18px;
        }

        .header-icons a {
            color: var(--ivory);
            font-size: 16px;
            transition: all 0.4s;
            position: relative;
            opacity: 0.8;
        }

        .header-icons a:hover {
            color: var(--gold);
            opacity: 1;
            transform: translateY(-2px);
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -10px;
            background: var(--gold);
            color: var(--noir);
            border-radius: 0;
            width: 18px;
            height: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 9px;
            font-weight: 600;
            letter-spacing: 0;
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 22px;
            color: var(--ivory);
            cursor: pointer;
            transition: all 0.3s;
        }

        .mobile-menu-btn:hover {
            color: var(--gold);
        }

        /* ---------- HERO / MAISON ---------- */
        .hero {
            min-height: 720px;
            background: linear-gradient(105deg, rgba(10, 10, 10, 0.95) 0%, rgba(10, 10, 10, 0.75) 45%, rgba(10, 10, 10, 0.5) 100%), 
                        url('https://images.unsplash.com/photo-1490481651871-ab68de25d43d?q=80&w=2070&auto=format&fit=crop') center/cover no-repeat;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at 20% 50%, rgba(198, 161, 91, 0.08), transparent 60%);
            pointer-events: none;
        }

        .hero-content {
            max-width: 720px;
            margin-left: 8%;
            padding: 100px 0;
            position: relative;
            z-index: 3;
            color: var(--ivory);
        }

        .hero-content::before {
            content: 'MAISON DE LUXE';
            position: absolute;
            top: 40px;
            left: 0;
            font-family: 'Jost', sans-serif;
            font-size: 11px;
            letter-spacing: 0.5em;
            color: var(--gold);
            opacity: 0.7;
            font-weight: 400;
        }

        .hero h1 {
            font-size: 88px;
            line-height: 1.05;
            margin-bottom: 32px;
            font-weight: 500;
            letter-spacing: -0.01em;
            text-shadow: 0 20px 40px rgba(0, 0, 0, 0.5);
        }

        .hero h1 span {
            color: var(--gold);
            font-style: italic;
            font-weight: 400;
        }

        .hero p {
            font-size: 18px;
            margin-bottom: 48px;
            opacity: 0.8;
            font-weight: 300;
            max-width: 520px;
            letter-spacing: 0.04em;
            line-height: 1.8;
            border-left: 2px solid var(--gold);
            padding-left: 24px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            padding: 16px 44px;
            font-weight: 400;
            text-decoration: none;
            transition: all 0.4s ease;
            font-size: 12px;
            letter-spacing: 0.2em;
            text-transform: uppercase;
            border: 1px solid transparent;
            font-family: 'Jost', sans-serif;
            cursor: pointer;
        }

        .btn-primary {
            background: var(--gold);
            color: var(--noir);
            border: 1px solid var(--gold);
        }

        .btn-primary:hover {
            background: transparent;
            color: var(--gold);
            transform: translateY(-3px);
            box-shadow: 0 20px 40px -10px rgba(198, 161, 91, 0.3);
        }

        .btn-secondary {
            background: transparent;
            color: var(--ivory);
            border: 1px solid rgba(246, 242, 234, 0.3);
        }

        .btn-secondary:hover {
            border-color: var(--gold);
            color: var(--gold);
            transform: translateY(-3px);
            box-shadow: 0 20px 40px -10px rgba(198, 161, 91, 0.15);
        }

        /* ---------- SECTION TITLES ---------- */
        .section-title {
            text-align: center;
            margin: 100px 0 60px;
            position: relative;
        }

        .section-title::before {
            content: '◆';
            display: block;
            font-size: 10px;
            color: var(--gold);
            margin-bottom: 16px;
            letter-spacing: 4px;
        }

        .section-title h2 {
            font-size: 52px;
            color: var(--noir);
            margin-bottom: 16px;
            font-weight: 500;
            letter-spacing: 0.02em;
            position: relative;
            display: inline-block;
        }

        .section-title h2::after {
            content: '';
            position: absolute;
            bottom: -18px;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 1px;
            background: linear-gradient(90deg, transparent, var(--gold), transparent);
        }

        .section-title p {
            color: var(--taupe);
            font-size: 16px;
            max-width: 520px;
            margin: 28px auto 0;
            font-weight: 300;
            letter-spacing: 0.06em;
            line-height: 1.8;
        }

        /* ---------- CATEGORIES / COLLECTIONS ---------- */
        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 2px;
            margin-bottom: 100px;
            background: var(--noir);
            padding: 2px;
        }

        .category-card {
            background: var(--warm-white);
            padding: 48px 16px 40px;
            text-align: center;
            transition: all 0.5s cubic-bezier(0.2, 0.9, 0.3, 1);
            position: relative;
            overflow: hidden;
            cursor: pointer;
        }

        .category-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: var(--noir);
            transform: scaleY(0);
            transform-origin: bottom;
            transition: transform 0.5s cubic-bezier(0.2, 0.9, 0.3, 1);
            z-index: 0;
        }

        .category-card:hover::before {
            transform: scaleY(1);
        }

        .category-card > * {
            position: relative;
            z-index: 1;
            transition: color 0.4s;
        }

        .category-card:hover .category-icon,
        .category-card:hover h3,
        .category-card:hover p {
            color: var(--gold);
        }

        .category-icon {
            font-size: 36px;
            margin-bottom: 20px;
            color: var(--gold);
            transition: all 0.4s;
        }

        .category-card:hover .category-icon {
            transform: translateY(-6px) scale(1.1);
        }

        .category-card h3 {
            font-size: 16px;
            font-weight: 500;
            color: var(--noir);
            margin-bottom: 10px;
            font-family: 'Cormorant Garamond', serif;
            letter-spacing: 0.08em;
            text-transform: uppercase;
            transition: color 0.4s;
        }

        .category-card p {
            color: var(--taupe);
            font-size: 12px;
            font-weight: 300;
            letter-spacing: 0.06em;
            line-height: 1.5;
            transition: color 0.4s;
        }

        /* ---------- PRODUCTS / PIÈCES ---------- */
        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 32px;
            margin-bottom: 100px;
        }

        .product-card {
            background: var(--warm-white);
            overflow: hidden;
            transition: all 0.5s cubic-bezier(0.2, 0.9, 0.3, 1);
            position: relative;
            border: 1px solid rgba(198, 161, 91, 0.12);
        }

        .product-card::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 3px;
            background: var(--gold);
            transform: scaleX(0);
            transition: transform 0.5s cubic-bezier(0.2, 0.9, 0.3, 1);
            transform-origin: left;
        }

        .product-card:hover::after {
            transform: scaleX(1);
        }

        .product-card:hover {
            box-shadow: 0 40px 80px -30px rgba(0, 0, 0, 0.2);
            transform: translateY(-6px);
        }

        .product-badge {
            position: absolute;
            top: 16px;
            left: 16px;
            background: var(--noir);
            color: var(--gold);
            padding: 6px 16px;
            font-size: 9px;
            font-weight: 500;
            letter-spacing: 0.2em;
            text-transform: uppercase;
            z-index: 5;
            border: 1px solid rgba(198, 161, 91, 0.3);
            font-family: 'Jost', sans-serif;
        }

        .product-img {
            width: 100%;
            height: 280px;
            object-fit: cover;
            transition: transform 0.7s cubic-bezier(0.2, 0.9, 0.3, 1);
            filter: brightness(0.98);
        }

        .product-card:hover .product-img {
            transform: scale(1.06);
            filter: brightness(1);
        }

        .product-info {
            padding: 24px 22px 28px;
            text-align: center;
        }

        .product-info h3 {
            font-size: 18px;
            font-weight: 500;
            margin-bottom: 8px;
            color: var(--noir);
            font-family: 'Cormorant Garamond', serif;
            letter-spacing: 0.06em;
            text-transform: uppercase;
        }

        .product-info .price {
            font-weight: 400;
            color: var(--noir);
            font-size: 18px;
            margin-bottom: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            font-family: 'Jost', sans-serif;
            letter-spacing: 0.04em;
        }

        .product-info .old-price {
            text-decoration: line-through;
            color: var(--silver);
            font-size: 14px;
            font-weight: 300;
        }

        .product-info .rating {
            color: var(--gold);
            margin-bottom: 20px;
            font-size: 12px;
            letter-spacing: 3px;
        }

        .product-info .rating span {
            color: var(--taupe);
            font-size: 11px;
            letter-spacing: 0.04em;
            margin-left: 6px;
            font-family: 'Jost', sans-serif;
        }

        .add-to-cart {
            width: 100%;
            padding: 12px 0;
            background: transparent;
            color: var(--noir);
            border: 1px solid var(--noir);
            cursor: pointer;
            transition: all 0.4s ease;
            font-weight: 400;
            font-size: 11px;
            letter-spacing: 0.2em;
            text-transform: uppercase;
            font-family: 'Jost', sans-serif;
        }

        .add-to-cart:hover {
            background: var(--noir);
            color: var(--gold);
            border-color: var(--noir);
            letter-spacing: 0.3em;
        }

        /* ---------- DEAL / ÉDITION LIMITÉE ---------- */
        .deals {
            background: var(--noir);
            padding: 100px 0;
            margin-bottom: 100px;
            position: relative;
            overflow: hidden;
        }

        .deals::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -10%;
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, rgba(198, 161, 91, 0.06), transparent 70%);
            border-radius: 50%;
        }

        .deals .section-title h2,
        .deals .section-title p {
            color: var(--ivory);
        }

        .deals .section-title h2::after {
            background: linear-gradient(90deg, transparent, var(--gold), transparent);
        }

        .deal-container {
            display: flex;
            align-items: center;
            background: var(--noir-soft);
            border: 1px solid rgba(198, 161, 91, 0.2);
            position: relative;
            overflow: hidden;
        }

        .deal-img {
            width: 50%;
            height: 560px;
            object-fit: cover;
            filter: brightness(0.85);
            transition: filter 0.6s;
        }

        .deal-container:hover .deal-img {
            filter: brightness(0.95);
        }

        .deal-content {
            width: 50%;
            padding: 64px 56px;
        }

        .deal-content h3 {
            font-size: 44px;
            color: var(--ivory);
            margin-bottom: 16px;
            font-weight: 500;
            letter-spacing: 0.04em;
        }

        .deal-content h3 span {
            color: var(--gold);
            font-style: italic;
            font-weight: 400;
        }

        .deal-content > p {
            color: rgba(246, 242, 234, 0.6);
            font-size: 16px;
            margin-bottom: 36px;
            font-weight: 300;
            letter-spacing: 0.06em;
            line-height: 1.9;
        }

        .deal-timer {
            display: flex;
            gap: 20px;
            margin: 36px 0 40px;
        }

        .timer-box {
            text-align: center;
            background: transparent;
            color: var(--gold);
            padding: 16px 12px;
            min-width: 86px;
            border: 1px solid rgba(198, 161, 91, 0.3);
            transition: all 0.4s;
        }

        .timer-box:hover {
            border-color: var(--gold);
            background: rgba(198, 161, 91, 0.05);
        }

        .timer-box span:first-child {
            font-size: 34px;
            font-weight: 500;
            display: block;
            line-height: 1.2;
            font-family: 'Cormorant Garamond', serif;
            color: var(--ivory);
        }

        .timer-box span:last-child {
            font-size: 9px;
            opacity: 0.6;
            text-transform: uppercase;
            letter-spacing: 0.24em;
            font-weight: 400;
            font-family: 'Jost', sans-serif;
        }

        .deal-price {
            font-size: 42px;
            font-weight: 500;
            color: var(--gold);
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            gap: 16px;
            flex-wrap: wrap;
            font-family: 'Cormorant Garamond', serif;
            letter-spacing: 0.02em;
        }

        .deal-old-price {
            text-decoration: line-through;
            color: rgba(246, 242, 234, 0.3);
            font-size: 24px;
            font-weight: 300;
        }

        .deal-discount {
            background: transparent;
            color: var(--gold);
            padding: 4px 16px;
            font-size: 12px;
            font-weight: 400;
            letter-spacing: 0.2em;
            text-transform: uppercase;
            border: 1px solid var(--gold);
            font-family: 'Jost', sans-serif;
        }

        .deal-content .btn-primary {
            background: var(--gold);
            color: var(--noir);
            border-color: var(--gold);
            padding: 18px 52px;
        }

        .deal-content .btn-primary:hover {
            background: transparent;
            color: var(--gold);
        }

        /* ---------- TESTIMONIALS / TÉMOIGNAGES ---------- */
        .testimonials {
            margin-bottom: 100px;
        }

        .testimonial-slider {
            display: flex;
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            gap: 32px;
            padding: 40px 8px 60px;
            scrollbar-width: none;
            cursor: grab;
        }

        .testimonial-slider::-webkit-scrollbar {
            display: none;
        }

        .testimonial-card {
            min-width: 400px;
            background: var(--warm-white);
            padding: 48px 40px;
            scroll-snap-align: start;
            border: 1px solid rgba(198, 161, 91, 0.15);
            transition: all 0.5s;
            position: relative;
        }

        .testimonial-card::before {
            content: '"';
            position: absolute;
            top: 20px;
            left: 28px;
            font-family: 'Cormorant Garamond', serif;
            font-size: 80px;
            color: var(--gold);
            opacity: 0.12;
            line-height: 1;
        }

        .testimonial-card:hover {
            border-color: rgba(198, 161, 91, 0.4);
            box-shadow: 0 30px 60px -30px rgba(0, 0, 0, 0.15);
            transform: translateY(-4px);
        }

        .testimonial-card .rating {
            color: var(--gold);
            margin-bottom: 24px;
            font-size: 14px;
            letter-spacing: 4px;
        }

        .testimonial-card p {
            font-style: italic;
            margin-bottom: 32px;
            font-size: 17px;
            line-height: 1.8;
            color: var(--smoke);
            font-family: 'Cormorant Garamond', serif;
            font-weight: 400;
            letter-spacing: 0.02em;
        }

        .user-info {
            display: flex;
            align-items: center;
        }

        .user-avatar {
            width: 52px;
            height: 52px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 18px;
            border: 2px solid var(--gold);
            padding: 2px;
            filter: grayscale(0.2);
        }

        .user-name {
            font-weight: 500;
            color: var(--noir);
            font-size: 14px;
            letter-spacing: 0.08em;
            text-transform: uppercase;
            font-family: 'Jost', sans-serif;
        }

        .user-title {
            color: var(--taupe);
            font-size: 11px;
            font-weight: 300;
            letter-spacing: 0.06em;
        }

        /* ---------- NEWSLETTER / CERCLE PRIVÉ ---------- */
        .newsletter {
            background: var(--noir);
            color: var(--ivory);
            padding: 100px 0;
            text-align: center;
            margin-bottom: 100px;
            position: relative;
            overflow: hidden;
            border-top: 1px solid rgba(198, 161, 91, 0.15);
            border-bottom: 1px solid rgba(198, 161, 91, 0.15);
        }

        .newsletter::before {
            content: '◆';
            position: absolute;
            top: 40px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 10px;
            color: var(--gold);
            letter-spacing: 8px;
            opacity: 0.4;
        }

        .newsletter::after {
            content: '';
            position: absolute;
            bottom: -100px;
            left: 50%;
            transform: translateX(-50%);
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, rgba(198, 161, 91, 0.05), transparent 70%);
            border-radius: 50%;
            pointer-events: none;
        }

        .newsletter h2 {
            font-size: 48px;
            margin-bottom: 20px;
            color: var(--ivory);
            position: relative;
            z-index: 2;
            font-weight: 500;
            letter-spacing: 0.04em;
        }

        .newsletter h2 span {
            color: var(--gold);
            font-style: italic;
            font-weight: 400;
        }

        .newsletter p {
            max-width: 520px;
            margin: 0 auto 44px;
            opacity: 0.6;
            font-size: 15px;
            font-weight: 300;
            letter-spacing: 0.08em;
            line-height: 1.9;
            position: relative;
            z-index: 2;
        }

        .newsletter-form {
            display: flex;
            max-width: 540px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
            border: 1px solid rgba(198, 161, 91, 0.3);
            transition: border-color 0.4s;
        }

        .newsletter-form:focus-within {
            border-color: var(--gold);
        }

        .newsletter-form input {
            flex: 1;
            padding: 18px 28px;
            border: none;
            outline: none;
            font-size: 13px;
            background: transparent;
            color: var(--ivory);
            font-family: 'Jost', sans-serif;
            letter-spacing: 0.1em;
            text-transform: uppercase;
        }

        .newsletter-form input::placeholder {
            color: rgba(246, 242, 234, 0.3);
            letter-spacing: 0.14em;
            font-size: 11px;
        }

        .newsletter-form button {
            padding: 0 44px;
            background: var(--gold);
            color: var(--noir);
            border: none;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.4s;
            font-size: 11px;
            letter-spacing: 0.24em;
            text-transform: uppercase;
            font-family: 'Jost', sans-serif;
            white-space: nowrap;
        }

        .newsletter-form button:hover {
            background: var(--gold-light);
            letter-spacing: 0.3em;
        }

        /* ---------- FOOTER / MAISON ---------- */
        footer {
            background: var(--noir);
            color: rgba(246, 242, 234, 0.5);
            padding: 80px 0 30px;
            border-top: 1px solid rgba(198, 161, 91, 0.15);
        }

        .footer-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 56px;
            margin-bottom: 60px;
        }

        .footer-col h3 {
            font-size: 14px;
            color: var(--gold);
            margin-bottom: 28px;
            position: relative;
            padding-bottom: 16px;
            font-family: 'Jost', sans-serif;
            letter-spacing: 0.24em;
            text-transform: uppercase;
            font-weight: 400;
        }

        .footer-col h3::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            width: 32px;
            height: 1px;
            background: var(--gold);
            opacity: 0.5;
        }

        .footer-col ul {
            list-style: none;
        }

        .footer-col ul li {
            margin-bottom: 14px;
        }

        .footer-col ul li a {
            color: rgba(246, 242, 234, 0.4);
            text-decoration: none;
            transition: all 0.4s;
            font-weight: 300;
            font-size: 13px;
            letter-spacing: 0.08em;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .footer-col ul li a i {
            color: var(--gold);
            font-size: 9px;
            opacity: 0.5;
            transition: all 0.3s;
        }

        .footer-col ul li a:hover {
            color: var(--gold);
            padding-left: 6px;
        }

        .footer-col ul li a:hover i {
            opacity: 1;
            transform: translateX(4px);
        }

        .footer-col p {
            font-size: 13px;
            line-height: 1.9;
            font-weight: 300;
            letter-spacing: 0.04em;
        }

        .social-links {
            display: flex;
            gap: 16px;
            margin-top: 28px;
        }

        .social-links a {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 42px;
            height: 42px;
            background: transparent;
            color: rgba(246, 242, 234, 0.5);
            transition: all 0.4s ease;
            border: 1px solid rgba(198, 161, 91, 0.2);
            font-size: 15px;
        }

        .social-links a:hover {
            background: var(--gold);
            color: var(--noir);
            border-color: var(--gold);
            transform: translateY(-4px);
        }

        .payment-methods {
            display: flex;
            gap: 14px;
            margin-top: 28px;
        }

        .payment-methods img {
            height: 24px;
            filter: brightness(0) invert(1);
            opacity: 0.3;
            transition: all 0.4s;
        }

        .payment-methods img:hover {
            opacity: 0.8;
            transform: scale(1.1);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 32px;
            border-top: 1px solid rgba(198, 161, 91, 0.1);
            color: rgba(246, 242, 234, 0.25);
            font-size: 11px;
            letter-spacing: 0.16em;
            text-transform: uppercase;
            font-weight: 300;
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 1200px) {
            .container {
                padding: 0 32px;
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
                height: 400px;
            }
            .hero h1 {
                font-size: 68px;
            }
        }

        @media (max-width: 992px) {
            .footer-container {
                grid-template-columns: repeat(2, 1fr);
            }
            .hero h1 {
                font-size: 56px;
            }
            .section-title h2 {
                font-size: 42px;
            }
            .deal-content {
                padding: 48px 40px;
            }
            .deal-content h3 {
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
                font-size: 44px;
            }
            .hero p {
                font-size: 15px;
            }
            .hero-content {
                margin-left: 5%;
                padding: 80px 0;
            }
            .mobile-menu-btn {
                display: block;
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
                padding: 14px 0;
                border-bottom: 1px solid rgba(198, 161, 91, 0.1);
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
                min-width: 320px;
                padding: 36px 28px;
            }
            .newsletter h2 {
                font-size: 36px;
            }
            .newsletter-form {
                flex-direction: column;
                border: none;
                gap: 12px;
            }
            .newsletter-form input {
                border: 1px solid rgba(198, 161, 91, 0.3);
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
                font-size: 32px;
            }
            .section-title h2 {
                font-size: 34px;
            }
            .container {
                padding: 0 20px;
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
                        <a href="#"><i class="fas fa-th-large"></i> Collections <i class="fas fa-chevron-down" style="font-size: 9px;"></i></a>
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
                    <li><a href="#"><i class="fas fa-info-circle"></i> Maison</a></li>
                    <li><a href="#"><i class="fas fa-envelope"></i> Contact</a></li>
                </ul>
            </nav>
            
            <div class="search-bar">
                <input type="text" placeholder="Search the Maison...">
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
                <a href="#" class="btn btn-primary">Shop Now <i class="fas fa-arrow-right" style="font-size: 10px;"></i></a>
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
                    
                    <p>Only <strong style="color: var(--gold);">12</strong> items left at this price!</p>
                    
                    <button class="btn btn-primary" style="padding: 18px 52px; margin-top: 28px;">Buy Now <i class="fas fa-bolt" style="font-size: 10px;"></i></button>
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
                button.style.background = 'var(--gold)';
                button.style.color = 'var(--noir)';
                button.style.borderColor = 'var(--gold)';
                
                const currentCount = parseInt(cartCount.textContent);
                cartCount.textContent = currentCount + 1;
                
                setTimeout(() => {
                    button.textContent = 'Add to Cart';
                    button.style.background = 'transparent';
                    button.style.color = 'var(--noir)';
                    button.style.borderColor = 'var(--noir)';
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
