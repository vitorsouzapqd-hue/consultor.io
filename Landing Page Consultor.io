<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Consultor.io — O Consultório Digital que o seu Preço Merece</title>
  <meta name="description"
    content="Substitua o Google Meet por um Consultório Virtual imersivo. Receba seus pacientes com a autoridade que o seu trabalho merece.">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link
    href="https://fonts.googleapis.com/css2?family=Fraunces:ital,wght@0,400;0,700;0,900;1,400&family=DM+Sans:wght@300;400;500&display=swap"
    rel="stylesheet">
  <script src="https://unpkg.com/lucide@latest"></script>
  <style>
    *,
    *::before,
    *::after {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    :root {
      --teal: #0D9488;
      --teal-light: #14B8A8;
      --teal-glow: rgba(13, 148, 136, 0.18);
      --charcoal: #111714;
      --surface: #161C1A;
      --surface2: #1C2422;
      --text: #E8EDE9;
      --text-muted: #7A9188;
      --border: rgba(13, 148, 136, 0.15);
      --font-display: 'Fraunces', serif;
      --font-body: 'DM Sans', sans-serif;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      background-color: var(--charcoal);
      color: var(--text);
      font-family: var(--font-body);
      font-weight: 300;
      line-height: 1.7;
      overflow-x: hidden;
    }

    /* Grain texture overlay */
    body::before {
      content: '';
      position: fixed;
      inset: 0;
      background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)' opacity='0.04'/%3E%3C/svg%3E");
      pointer-events: none;
      z-index: 999;
      opacity: 0.4;
    }

    /* ── NAVBAR ── */
    nav {
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      z-index: 100;
      padding: 0 5%;
      height: 68px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      background: rgba(17, 23, 20, 0.75);
      backdrop-filter: blur(18px);
      border-bottom: 1px solid var(--border);
      transition: background 0.3s;
    }

    .nav-logo {
      font-family: var(--font-display);
      font-weight: 700;
      font-size: 1.25rem;
      color: var(--text);
      text-decoration: none;
      letter-spacing: -0.02em;
    }

    .nav-logo span {
      color: var(--teal);
    }

    .nav-links {
      display: flex;
      gap: 2rem;
      list-style: none;
    }

    .nav-links a {
      color: var(--text-muted);
      text-decoration: none;
      font-size: 0.9rem;
      font-weight: 400;
      letter-spacing: 0.02em;
      transition: color 0.2s;
    }

    .nav-links a:hover {
      color: var(--text);
    }

    .btn-nav {
      background: var(--teal);
      color: white;
      padding: 0.55rem 1.25rem;
      border-radius: 6px;
      font-size: 0.88rem;
      font-weight: 500;
      text-decoration: none;
      letter-spacing: 0.01em;
      transition: background 0.2s, box-shadow 0.2s;
    }

    .btn-nav:hover {
      background: var(--teal-light);
      box-shadow: 0 0 20px var(--teal-glow);
    }

    /* ── HERO ── */
    .hero {
      min-height: 100vh;
      padding: 120px 5% 80px;
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 4rem;
      align-items: center;
      position: relative;
      overflow: hidden;
    }

    /* Ambient glow behind hero */
    .hero::before {
      content: '';
      position: absolute;
      top: -10%;
      left: -5%;
      width: 55%;
      height: 70%;
      background: radial-gradient(ellipse, rgba(13, 148, 136, 0.12) 0%, transparent 70%);
      pointer-events: none;
    }

    .hero-eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 0.5rem;
      background: var(--teal-glow);
      border: 1px solid var(--border);
      border-radius: 100px;
      padding: 0.35rem 0.9rem;
      font-size: 0.78rem;
      font-weight: 500;
      color: var(--teal-light);
      letter-spacing: 0.05em;
      text-transform: uppercase;
      margin-bottom: 1.5rem;
      animation: fadeUp 0.6s ease both;
    }

    .hero-eyebrow::before {
      content: '';
      width: 6px;
      height: 6px;
      border-radius: 50%;
      background: var(--teal-light);
      box-shadow: 0 0 8px var(--teal-light);
      animation: pulse 2s infinite;
    }

    @keyframes pulse {

      0%,
      100% {
        opacity: 1;
      }

      50% {
        opacity: 0.4;
      }
    }

    .hero-headline {
      font-family: var(--font-display);
      font-size: clamp(2.4rem, 4.5vw, 3.6rem);
      font-weight: 900;
      line-height: 1.08;
      letter-spacing: -0.03em;
      color: var(--text);
      margin-bottom: 1.5rem;
      animation: fadeUp 0.7s 0.1s ease both;
    }

    .hero-headline em {
      font-style: italic;
      color: var(--teal-light);
    }

    .hero-sub {
      font-size: 1.05rem;
      color: var(--text-muted);
      max-width: 500px;
      line-height: 1.8;
      margin-bottom: 2.5rem;
      animation: fadeUp 0.7s 0.2s ease both;
    }

    .hero-actions {
      display: flex;
      gap: 1rem;
      flex-wrap: wrap;
      animation: fadeUp 0.7s 0.3s ease both;
    }

    .btn-primary {
      background: var(--teal);
      color: white;
      padding: 0.85rem 2rem;
      border-radius: 8px;
      font-size: 1rem;
      font-weight: 500;
      text-decoration: none;
      transition: all 0.2s;
      box-shadow: 0 4px 24px rgba(13, 148, 136, 0.3);
    }

    .btn-primary:hover {
      background: var(--teal-light);
      transform: translateY(-2px);
      box-shadow: 0 8px 32px rgba(13, 148, 136, 0.4);
    }

    .btn-ghost {
      color: var(--text-muted);
      padding: 0.85rem 1.5rem;
      border-radius: 8px;
      border: 1px solid var(--border);
      font-size: 1rem;
      text-decoration: none;
      transition: all 0.2s;
      background: transparent;
    }

    .btn-ghost:hover {
      color: var(--text);
      border-color: var(--teal);
      background: var(--teal-glow);
    }

    /* Hero visual — split screen mockup */
    .hero-visual {
      display: flex;
      flex-direction: column;
      gap: 0.75rem;
      animation: fadeLeft 0.8s 0.2s ease both;
    }

    .mockup-label {
      font-size: 0.72rem;
      font-weight: 500;
      letter-spacing: 0.08em;
      text-transform: uppercase;
      color: var(--text-muted);
      text-align: center;
      padding: 0.3rem 0;
    }

    .split-screens {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 0.75rem;
      align-items: stretch;
    }

    .screen-card {
      border-radius: 12px;
      overflow: hidden;
      border: 1px solid var(--border);
      position: relative;
    }

    .screen-card__header {
      padding: 0.5rem 0.75rem;
      display: flex;
      align-items: center;
      gap: 0.4rem;
      border-bottom: 1px solid var(--border);
    }

    .dot {
      width: 8px;
      height: 8px;
      border-radius: 50%;
    }

    .dot-r {
      background: #FF5F57;
    }

    .dot-y {
      background: #FFBD2E;
    }

    .dot-g {
      background: #28C840;
    }

    .screen-bad {
      background: #0D0D0D;
    }

    .screen-bad .screen-card__header {
      background: #1A1A1A;
    }

    .screen-bad__body {
      padding: 2rem 1rem;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      gap: 0.75rem;
      min-height: 180px;
    }

    .spinner {
      width: 28px;
      height: 28px;
      border: 2px solid #333;
      border-top-color: #555;
      border-radius: 50%;
      animation: spin 1.2s linear infinite;
    }

    @keyframes spin {
      to {
        transform: rotate(360deg);
      }
    }

    .screen-bad__body p {
      font-size: 0.75rem;
      color: #444;
      text-align: center;
    }

    .screen-good {
      background: var(--surface);
    }

    .screen-good .screen-card__header {
      background: var(--surface2);
    }

    .screen-good__body {
      padding: 0.75rem;
      min-height: 180px;
      position: relative;
      display: flex;
      flex-direction: column;
      gap: 0.5rem;
    }

    /* Simulated pixel-art room */
    .pixel-room {
      flex: 1;
      background:
        linear-gradient(180deg, #1A2E2A 0%, #243830 40%, #2A1F14 100%);
      border-radius: 6px;
      position: relative;
      overflow: hidden;
      min-height: 130px;
    }

    .pixel-floor {
      position: absolute;
      bottom: 0;
      left: 0;
      right: 0;
      height: 50%;
      background: repeating-linear-gradient(90deg,
          rgba(60, 35, 15, 0.6) 0px,
          rgba(60, 35, 15, 0.6) 2px,
          rgba(80, 48, 20, 0.4) 2px,
          rgba(80, 48, 20, 0.4) 24px);
    }

    .pixel-avatar {
      position: absolute;
      bottom: 30%;
      left: 50%;
      transform: translateX(-50%);
      width: 18px;
      height: 28px;
      background: #4A90D9;
      border-radius: 3px 3px 0 0;
    }

    .pixel-avatar::before {
      content: '';
      position: absolute;
      top: -10px;
      left: 50%;
      transform: translateX(-50%);
      width: 14px;
      height: 12px;
      background: #F5CBA7;
      border-radius: 50%;
    }

    .pixel-shelf {
      position: absolute;
      top: 20%;
      left: 10%;
      width: 30%;
      height: 50%;
      background: #3D2007;
      border-right: 3px solid #5C3210;
    }

    .pixel-plant {
      position: absolute;
      bottom: 30%;
      right: 12%;
      width: 14px;
      height: 22px;
      background: #2D5A27;
      border-radius: 50% 50% 0 0;
    }

    .room-tag {
      position: absolute;
      top: 8px;
      left: 50%;
      transform: translateX(-50%);
      background: rgba(255, 255, 255, 0.08);
      border: 1px solid rgba(255, 255, 255, 0.12);
      border-radius: 20px;
      padding: 2px 10px;
      font-size: 0.6rem;
      color: #aaa;
      white-space: nowrap;
    }

    .screen-good__ui {
      display: flex;
      justify-content: center;
      gap: 0.4rem;
    }

    .ui-pill {
      background: var(--teal-glow);
      border: 1px solid var(--border);
      border-radius: 20px;
      padding: 0.2rem 0.5rem;
      font-size: 0.6rem;
      color: var(--teal-light);
    }

    .screen-vs {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      z-index: 10;
      background: var(--surface2);
      border: 1px solid var(--border);
      border-radius: 50%;
      width: 32px;
      height: 32px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 0.65rem;
      font-weight: 700;
      color: var(--text-muted);
      letter-spacing: 0.05em;
    }

    .hero-social-proof {
      display: flex;
      align-items: center;
      gap: 0.75rem;
      margin-top: 1rem;
      padding-top: 1rem;
      border-top: 1px solid var(--border);
    }

    .avatars {
      display: flex;
    }

    .avatar-circle {
      width: 28px;
      height: 28px;
      border-radius: 50%;
      border: 2px solid var(--charcoal);
      margin-left: -6px;
      font-size: 0.6rem;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 600;
      color: white;
    }

    .avatar-circle:first-child {
      margin-left: 0;
    }

    .av1 {
      background: #0D9488;
    }

    .av2 {
      background: #6366F1;
    }

    .av3 {
      background: #EC4899;
    }

    .av4 {
      background: #F59E0B;
    }

    .social-text {
      font-size: 0.8rem;
      color: var(--text-muted);
    }

    .social-text strong {
      color: var(--teal-light);
    }

    /* Animations */
    @keyframes fadeUp {
      from {
        opacity: 0;
        transform: translateY(20px);
      }

      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes fadeLeft {
      from {
        opacity: 0;
        transform: translateX(20px);
      }

      to {
        opacity: 1;
        transform: translateX(0);
      }
    }

    /* ── RESPONSIVE ── */
    @media (max-width: 900px) {
      .hero {
        grid-template-columns: 1fr;
        padding-top: 100px;
        text-align: center;
      }

      .hero::before {
        display: none;
      }

      .hero-sub {
        max-width: 100%;
      }

      .hero-actions {
        justify-content: center;
      }

      .hero-social-proof {
        justify-content: center;
      }

      .nav-links {
        display: none;
      }
    }

    /* ── PROBLEMA ── */
    .section-label {
      display: inline-block;
      font-size: 0.72rem;
      font-weight: 500;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      color: var(--teal-light);
      margin-bottom: 1rem;
    }

    .section-headline {
      font-family: var(--font-display);
      font-size: clamp(2rem, 3.5vw, 3rem);
      font-weight: 900;
      line-height: 1.1;
      letter-spacing: -0.03em;
      color: var(--text);
      margin-bottom: 1rem;
    }

    .section-sub {
      color: var(--text-muted);
      font-size: 1.05rem;
      max-width: 560px;
      line-height: 1.8;
    }

    .problem {
      padding: 100px 5%;
      background: var(--surface);
      position: relative;
      overflow: hidden;
    }

    .problem::before {
      content: '';
      position: absolute;
      bottom: -20%;
      right: -5%;
      width: 40%;
      height: 60%;
      background: radial-gradient(ellipse, rgba(13, 148, 136, 0.07) 0%, transparent 70%);
      pointer-events: none;
    }

    .problem-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 4rem;
      align-items: center;
      margin-top: 4rem;
    }

    .pain-cards {
      display: flex;
      flex-direction: column;
      gap: 1rem;
    }

    .pain-card {
      background: var(--charcoal);
      border: 1px solid var(--border);
      border-radius: 12px;
      padding: 1.25rem 1.5rem;
      display: flex;
      gap: 1rem;
      align-items: flex-start;
      transition: border-color 0.3s, transform 0.3s;
      cursor: default;
    }

    .pain-card:hover {
      border-color: rgba(13, 148, 136, 0.4);
      transform: translateX(4px);
    }

    .pain-icon {
      width: 40px;
      height: 40px;
      border-radius: 8px;
      background: rgba(239, 68, 68, 0.1);
      border: 1px solid rgba(239, 68, 68, 0.2);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 1.1rem;
      flex-shrink: 0;
    }

    .pain-card h3 {
      font-size: 0.95rem;
      font-weight: 500;
      color: var(--text);
      margin-bottom: 0.25rem;
    }

    .pain-card p {
      font-size: 0.85rem;
      color: var(--text-muted);
      line-height: 1.6;
    }

    /* Quote block */
    .problem-quote {
      display: flex;
      flex-direction: column;
      gap: 1.5rem;
    }

    .quote-mark {
      font-family: var(--font-display);
      font-size: 5rem;
      color: var(--teal);
      line-height: 0.5;
      opacity: 0.4;
    }

    blockquote {
      font-family: var(--font-display);
      font-size: clamp(1.2rem, 2vw, 1.55rem);
      font-style: italic;
      line-height: 1.5;
      color: var(--text);
      font-weight: 400;
    }

    blockquote strong {
      color: var(--teal-light);
      font-style: normal;
    }

    .quote-author {
      font-size: 0.85rem;
      color: var(--text-muted);
      padding-top: 1rem;
      border-top: 1px solid var(--border);
    }

    /* ── COMO FUNCIONA ── */
    .howto {
      padding: 100px 5%;
      background: var(--charcoal);
    }

    .howto-header {
      text-align: center;
      max-width: 620px;
      margin: 0 auto 5rem;
    }

    .howto-header .section-sub {
      margin: 0 auto;
    }

    .steps {
      display: grid;
      grid-template-columns: repeat(5, 1fr);
      gap: 0;
      position: relative;
    }

    .steps::before {
      content: '';
      position: absolute;
      top: 28px;
      left: 10%;
      right: 10%;
      height: 1px;
      background: linear-gradient(90deg, transparent, var(--teal), var(--teal), transparent);
      opacity: 0.3;
    }

    .step {
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      padding: 0 0.75rem;
      position: relative;
    }

    .step-num {
      width: 56px;
      height: 56px;
      border-radius: 50%;
      border: 1px solid var(--teal);
      background: var(--charcoal);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 1.1rem;
      margin-bottom: 1.25rem;
      position: relative;
      z-index: 1;
      transition: background 0.3s, box-shadow 0.3s;
    }

    .step:hover .step-num {
      background: var(--teal-glow);
      box-shadow: 0 0 24px var(--teal-glow);
    }

    .step h3 {
      font-size: 0.9rem;
      font-weight: 500;
      color: var(--text);
      margin-bottom: 0.5rem;
    }

    .step p {
      font-size: 0.8rem;
      color: var(--text-muted);
      line-height: 1.6;
    }

    @media (max-width: 900px) {
      .problem-grid {
        grid-template-columns: 1fr;
        gap: 2rem;
      }

      .steps {
        grid-template-columns: 1fr !important;
        gap: 3rem;
      }

      .steps::before {
        display: none;
      }

      .step {
        flex-direction: column;
        text-align: center;
        gap: 1rem;
        align-items: center;
      }

      .step-num {
        flex-shrink: 0;
        margin-bottom: 1rem;
      }

      .tour-grid {
        grid-template-columns: 1fr !important;
      }
    }

    /* ── DEPOIMENTOS ── */
    .testimonials {
      padding: 100px 5%;
      background: var(--surface);
    }

    .testimonials-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 2rem;
      margin-top: 4rem;
    }

    .testimonial-card {
      background: var(--charcoal);
      border: 1px solid var(--border);
      border-radius: 16px;
      padding: 2rem;
      display: flex;
      flex-direction: column;
      gap: 1.5rem;
    }

    .testimonial-stars {
      color: #F59E0B;
      font-size: 0.9rem;
    }

    .testimonial-content {
      font-size: 0.95rem;
      line-height: 1.7;
      color: var(--text);
    }

    .testimonial-author {
      display: flex;
      align-items: center;
      gap: 1rem;
      margin-top: auto;
    }

    .author-avatar {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: var(--surface2);
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
      color: var(--teal-light);
      font-size: 0.8rem;
    }

    .author-info h4 {
      font-size: 0.9rem;
      font-weight: 500;
      color: var(--text);
    }

    .author-info p {
      font-size: 0.75rem;
      color: var(--text-muted);
    }

    /* ── PLANOS ── */
    .pricing {
      padding: 100px 5%;
      background: var(--charcoal);
    }

    .pricing-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 1.5rem;
      margin-top: 4rem;
    }

    .price-card {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: 20px;
      padding: 2.5rem 1.5rem;
      display: flex;
      flex-direction: column;
      transition: transform 0.3s, border-color 0.3s;
    }

    .price-card.featured {
      border-color: var(--teal);
      background: var(--surface2);
      transform: scale(1.05);
      box-shadow: 0 0 30px var(--teal-glow);
      position: relative;
    }

    .featured-tag {
      position: absolute;
      top: -12px;
      left: 50%;
      transform: translateX(-50%);
      background: var(--teal);
      color: white;
      padding: 4px 12px;
      border-radius: 20px;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
    }

    .price-header h3 {
      font-size: 1.25rem;
      font-weight: 600;
      margin-bottom: 0.5rem;
    }

    .price-header .amount {
      font-size: 2rem;
      font-weight: 900;
      font-family: var(--font-display);
      margin-bottom: 1.5rem;
    }

    .price-header .amount span {
      font-size: 0.9rem;
      font-weight: 400;
      color: var(--text-muted);
    }

    .price-features {
      list-style: none;
      margin-bottom: 2rem;
      flex-grow: 1;
    }

    .price-features li {
      font-size: 0.85rem;
      color: var(--text-muted);
      margin-bottom: 0.75rem;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .price-features li::before {
      content: '✓';
      color: var(--teal-light);
      font-weight: 900;
    }

    .btn-price {
      display: block;
      text-align: center;
      padding: 0.75rem;
      border-radius: 10px;
      background: var(--teal-glow);
      color: var(--teal-light);
      text-decoration: none;
      font-weight: 600;
      font-size: 0.9rem;
      border: 1px solid var(--border);
      transition: all 0.2s;
    }

    .price-card.featured .btn-price {
      background: var(--teal);
      color: white;
      border: none;
    }

    /* ── FINAL CTA ── */
    .final-cta {
      padding: 100px 5%;
      background: var(--teal);
      text-align: center;
      color: white;
    }

    .final-cta h2 {
      font-family: var(--font-display);
      font-size: 2.5rem;
      margin-bottom: 1.5rem;
    }

    .final-cta .btn-primary {
      background: white;
      color: var(--teal);
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
    }

    /* ── FOOTER ── */
    footer {
      padding: 60px 5%;
      background: var(--charcoal);
      border-top: 1px solid var(--border);
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .footer-links {
      display: flex;
      gap: 2rem;
      list-style: none;
    }

    .footer-links a {
      color: var(--text-muted);
      text-decoration: none;
      font-size: 0.8rem;
    }

    @media (max-width: 900px) {

      .testimonials-grid,
      .pricing-grid {
        grid-template-columns: 1fr;
      }

      .price-card.featured {
        transform: none;
        margin: 20px 0;
      }

      footer {
        flex-direction: column;
        gap: 2rem;
        text-align: center;
      }
    }

    /* ── TOUR / GALERIA ── */
    .tour {
      padding: 100px 5%;
      background: var(--charcoal);
    }

    .tour-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 2rem;
      margin-top: 4rem;
    }

    .tour-card {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: 20px;
      overflow: hidden;
      transition: transform 0.3s;
    }

    .tour-card:hover {
      transform: translateY(-8px);
      border-color: var(--teal);
    }

    .tour-img {
      width: 100%;
      aspect-ratio: 1 / 1;
      object-fit: cover;
      background: #000;
      border-bottom: 1px solid var(--border);
    }

    .tour-info {
      padding: 1.5rem;
    }

    .tour-info h3 {
      font-size: 1.1rem;
      margin-bottom: 0.5rem;
      color: var(--teal-light);
    }

    .tour-info p {
      font-size: 0.85rem;
      color: var(--text-muted);
      line-height: 1.6;
    }

    /* Concept Section */
    .concept {
      padding: 80px 5%;
      background: var(--surface);
      border-bottom: 1px solid var(--border);
    }

    .concept-container {
      max-width: 1200px;
      margin: 0 auto;
      display: grid;
      grid-template-columns: 1fr 1.5fr;
      gap: 4rem;
      align-items: center;
    }

    .concept-text {
      border-left: 3px solid var(--teal);
      padding-left: 2rem;
    }

    .concept-text h2 {
      font-family: var(--font-display);
      font-size: clamp(1.8rem, 3vw, 2.2rem);
      margin-bottom: 1rem;
    }

    .concept-cards {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 1.5rem;
    }

    .concept-card {
      padding: 1.5rem;
      background: var(--charcoal);
      border-radius: 12px;
      border: 1px solid var(--border);
    }

    .concept-card h4 {
      color: var(--teal-light);
      margin-bottom: 0.5rem;
      font-size: 0.85rem;
      letter-spacing: 0.05em;
    }

    .concept-card p {
      font-size: 0.8rem;
      color: var(--text-muted);
      line-height: 1.6;
    }

    @media (max-width: 900px) {
      .concept-container {
        grid-template-columns: 1fr;
        gap: 2.5rem;
      }
      
      .concept-text {
        padding-left: 1.5rem;
      }

      .concept-cards {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>

<body>

  <!-- NAVBAR -->
  <nav>
    <a href="#" class="nav-logo">consultor<span>.io</span></a>
    <ul class="nav-links">
      <li><a href="#como-funciona">Como Funciona</a></li>
      <li><a href="#planos">Planos</a></li>
      <li><a href="#depoimentos">Depoimentos</a></li>
    </ul>
    <a href="#planos" class="btn-nav">Começar Grátis</a>
  </nav>

  <!-- HERO -->
  <section class="hero">
    <div class="hero-content">
      <div class="hero-eyebrow">Para profissionais de saúde</div>

      <h1 class="hero-headline">
        Transforme seu link genérico em um<br>
        <em>Consultório Digital</em> de Alta Performance.
      </h1>

      <p class="hero-sub">
        O Consultor.io é a primeira plataforma de atendimento imersivo que estabelece sua autoridade antes mesmo de você abrir a câmera. Um ambiente particular, projetado para que o seu paciente sinta o peso do seu currículo em cada detalhe visual.
      </p>

      <div class="hero-actions">
        <a href="#planos" class="btn-primary">Criar meu Consultório Grátis</a>
        <a href="#como-funciona" class="btn-ghost">Ver como funciona →</a>
      </div>

      <div class="hero-social-proof">
        <div class="avatars">
          <div class="avatar-circle av1">NF</div>
          <div class="avatar-circle av2">DR</div>
          <div class="avatar-circle av3">AM</div>
          <div class="avatar-circle av4">RB</div>
        </div>
        <p class="social-text"><strong>+840 profissionais</strong> já atenderam pelo Consultor.io esta semana</p>
      </div>
    </div>

    <div class="hero-visual">
      <p class="mockup-label">O Fim da Comoditização</p>
      <div style="position:relative;">
        <div class="split-screens">

          <!-- ANTES: tela preta do Google Meet -->
          <div class="screen-card screen-bad">
            <div class="screen-card__header">
              <div class="dot dot-r"></div>
              <div class="dot dot-y"></div>
              <div class="dot dot-g"></div>
            </div>
            <div class="screen-bad__body">
              <div class="spinner"></div>
              <p>Aguardando o<br>anfitrião iniciar<br>a reunião...</p>
            </div>
            <div style="position:absolute; bottom: 10px; width: 100%; text-align: center; font-size: 10px; color: #ef4444; font-weight: bold;">INTERFACE GENÉRICA</div>
          </div>

          <!-- DEPOISTER: Consultor.io -->
          <div class="screen-card screen-good">
            <div class="screen-card__header">
              <div class="dot dot-r"></div>
              <div class="dot dot-y"></div>
              <div class="dot dot-g"></div>
            </div>
            <div class="screen-good__body" style="padding: 0; min-height: 180px; overflow: hidden; position: relative;">
              <img
                src="assets/lobby.jpg"
                alt="Preview App" style="width: 100%; height: 100%; object-fit: cover;">
              <div style="position:absolute; bottom: 0; width: 100%; background: rgba(13, 148, 136, 0.9); color: white; padding: 5px; text-align: center; font-size: 10px; font-weight: bold;">SEU ATELIER DE AUTORIDADE</div>
            </div>
          </div>
        </div>
        <div class="screen-vs">VS</div>
      </div>
    </div>
  </section>

  <!-- O QUE É O CONSULTOR.IO -->
  <section class="concept">
    <div class="concept-container">
      <div class="concept-text">
        <h2>O que é o Consultor.io?</h2>
        <p style="color: var(--text-muted); line-height: 1.6;">Não é uma ferramenta de videoconferência. É a <strong>Arquitetura de Atendimento</strong> que envolve o seu paciente em um ritual de autoridade desde o convite até o pós-consulta.</p>
      </div>
      <div class="concept-cards">
        <div class="concept-card">
          <h4>ESPAÇO FÍSICO NO DIGITAL</h4>
          <p>Um endereço único onde o paciente "entra" no seu consultório, não apenas em uma aba.</p>
        </div>
        <div class="concept-card">
          <h4>MEMÓRIA COGNITIVA</h4>
          <p>O cérebro do paciente associa o ambiente premium ao valor da sua hora.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- TOUR PELO APP -->
  <section class="tour" id="tour">
    <div class="howto-header">
      <span class="section-label">Imersão Total</span>
      <h2 class="section-headline">Um tour pelo seu novo<br>Escritório Particular</h2>
      <p class="section-sub">Dê adeus às janelas cinzas e aos links frios. Bem-vindo à nova era da autoridade digital.
      </p>
    </div>

    <div class="tour-grid">
      <div class="tour-card">
        <img
          src="assets/lobby.jpg"
          class="tour-img" alt="Lobby Consultor.io">
        <div class="tour-info">
          <h3>A Ante-Sala (Lobby)</h3>
          <p>Onde o ritual começa. Seus pacientes chegam, observam o ambiente premium e aguardam com um café virtual.</p>
        </div>
      </div>
      <div class="tour-card">
        <img
          src="assets/depoimentos.jpg"
          class="tour-img" alt="Galeria de Depoimentos">
        <div class="tour-info">
          <h3>Galeria de Depoimentos</h3>
          <p>Ao clicar no mural, a tela principal sai de foco e abre-se a prova social. A sua autoridade é construída antes da primeira palavra.</p>
        </div>
      </div>
      <div class="tour-card">
        <img
          src="assets/marketplace.jpg"
          class="tour-img" alt="Marketplace de Mobiliário">
        <div class="tour-info">
          <h3>Atelier de Criação</h3>
          <p>Personalize cada centímetro. Escolha sofás de couro, móveis de mogno e decorações para tornar seu consultório único.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- PROBLEMA -->
  <section class="problem" id="problema">
    <div>
      <span class="section-label">O Diagnóstico</span>
      <h2 class="section-headline">Antigamente, o seu consultório<br>físico vendia antes de você abrir a boca.</h2>
    </div>

    <div class="problem-grid">
      <div class="pain-cards">
        <div class="pain-card">
          <div class="pain-icon">01</div>
          <div>
            <h3>A tela preta destrói a primeira impressão</h3>
            <p>"Aguardando o anfitrião..." — Essa mensagem cria ansiedade e desconfiança antes de você dizer um único "Bom dia".</p>
          </div>
        </div>
        <div class="pain-card">
          <div class="pain-icon">02</div>
          <div>
            <h3>O digital comoditizou a sua presença</h3>
            <p>Sem o ambiente físico para ancorar o preço, o paciente compara você com qualquer iniciante que usa o mesmo link genérico do Zoom.</p>
          </div>
        </div>
        <div class="pain-card">
          <div class="pain-icon">03</div>
          <div>
            <h3>O fim do pertencimento do paciente</h3>
            <p>Sem contexto, sem ritual, sem memória. A consulta termina e o cliente não sente que viveu algo especial — foi apenas mais uma aba no navegador.</p>
          </div>
        </div>
      </div>

      <div class="problem-quote">
        <div class="quote-mark">&ldquo;</div>
        <blockquote>
          Um nutricionista que cobra <strong>R$ 100</strong> e um que cobra <strong>R$ 1.500</strong> usam
          exatamente a mesma interface.
          O digital comoditizou a sua presença.
        </blockquote>
        <p class="quote-author">A dor que nenhuma ferramenta de vídeo resolveu — até agora.</p>
      </div>
    </div>
  </section>

  <!-- COMO FUNCIONA -->
  <section class="howto" id="como-funciona">
    <div class="howto-header">
      <span class="section-label">O Ritual</span>
      <h2 class="section-headline">5 passos que transformam<br>uma consulta num evento</h2>
      <p class="section-sub">Cada detalhe foi projetado para que o seu paciente chegue na sala da consulta já convicto
        de que está diante do melhor profissional que já encontrou.</p>
    </div>

    <div class="steps" style="grid-template-columns: repeat(4, 1fr);">
      <div class="step">
        <div class="step-num"><i data-lucide="bell"></i></div>
        <div>
          <h3>O Gatilho</h3>
          <p>O paciente recebe a notificação: "Seu consultório está aberto. Entre 15 minutos antes para conhecer o espaço." A imersão inicia aqui.</p>
        </div>
      </div>
      <div class="step">
        <div class="step-num"><i data-lucide="user"></i></div>
        <div>
          <h3>Criação do Avatar</h3>
          <p>Ele escolhe cabelo, roupas e acessórios. O paciente deixa de ser espectador e passa a ser "habitante" do seu consultório.</p>
        </div>
      </div>
      <div class="step">
        <div class="step-num"><i data-lucide="layers"></i></div>
        <div>
          <h3>A Ante-Sala</h3>
          <p>Ele interage com seu Museu de Autoridade: lê depoimentos, vê seus diplomas e toma um café virtual. O tempo de espera vira tempo de doutrinação.</p>
        </div>
      </div>
      <div class="step">
        <div class="step-num"><i data-lucide="video"></i></div>
        <div>
          <h3>A Consulta</h3>
          <p>A porta se abre. A sala de consulta é clean e focada, apenas com a Lousa Estratégica na parede. A autoridade já foi estabelecida.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- DEPOIMENTOS -->
  <section class="testimonials" id="depoimentos">
    <div class="howto-header">
      <span class="section-label">O que dizem os pioneiros</span>
      <h2 class="section-headline">O que muda quando a<br>experiência é premium</h2>
    </div>

    <div class="testimonials-grid">
      <div class="testimonial-card">
        <div class="testimonial-stars">★★★★★</div>
        <p class="testimonial-content">"Aumentei o valor da minha consulta em R$ 200 no mesmo mês que comecei a usar.
          Quando os pacientes entram no meu consultório virtual, eles entendem porque meu trabalho custa o que custa."
        </p>
        <div class="testimonial-author">
          <div class="author-avatar">AC</div>
          <div class="author-info">
            <h4>Dra. Ana Costa</h4>
            <p>Nutricionista Clínica</p>
          </div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="testimonial-stars">★★★★★</div>
        <p class="testimonial-content">"Meus pacientes pararam de faltar. Eles ficam ansiosos para entrar no consultório
          antes da sessão. A experiêcia virou um ritual que eles esperam."</p>
        <div class="testimonial-author">
          <div class="author-avatar">RP</div>
          <div class="author-info">
            <h4>Dr. Ricardo Pena</h4>
            <p>Psicólogo</p>
          </div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="testimonial-stars">★★★★★</div>
        <p class="testimonial-content">"Sou a única nutricionista da minha cidade que atende assim. Não compito mais por
          preço. O Consultor.io virou meu maior diferencial."</p>
        <div class="testimonial-author">
          <div class="author-avatar">MS</div>
          <div class="author-info">
            <h4>Mariana Silva</h4>
            <p>Nutricionista Esportiva</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- PLANOS -->
  <section class="pricing" id="planos">
    <div class="howto-header">
      <span class="section-label">Investimento</span>
      <h2 class="section-headline">Escolha o nível de autoridade<br>do seu Consultório</h2>
    </div>

    <div class="pricing-grid">
      <div class="price-card">
        <div class="price-header">
          <h3>Explorador</h3>
          <div class="amount">R$ 0<span>/mês</span></div>
        </div>
        <ul class="price-features">
          <li>5 consultas/mês</li>
          <li>Ante-sala básica</li>
          <li>Avatar completo</li>
          <li>Lousa Estratégica</li>
          <li>3 templates de ambiente</li>
        </ul>
        <a href="#" class="btn-price">Começar Agora</a>
      </div>

      <div class="price-card">
        <div class="price-header">
          <h3>Starter</h3>
          <div class="amount">R$ 67<span>/mês</span></div>
        </div>
        <ul class="price-features">
          <li>25 consultas/mês</li>
          <li>Ante-sala personalizada</li>
          <li>Sem logo Consultor.io</li>
          <li>Gravação (7 dias)</li>
          <li>Salvar templates de Lousa</li>
          <li>Transcrição básica</li>
        </ul>
        <a href="#" class="btn-price">Selecionar</a>
      </div>

      <div class="price-card featured">
        <div class="featured-tag">Mais Popular</div>
        <div class="price-header">
          <h3>Pro</h3>
          <div class="amount">R$ 197<span>/mês</span></div>
        </div>
        <ul class="price-features">
          <li>Consultas ilimitadas</li>
          <li><strong>Museu de Autoridade</strong></li>
          <li>Transcrição IA estruturada</li>
          <li>Vídeo linkado por tópicos</li>
          <li>Grupos até 8 pessoas</li>
          <li>Lousa Colaborativa</li>
          <li>Catálogo Premium de Móveis</li>
        </ul>
        <a href="#" class="btn-price">Selecionar Pro</a>
      </div>

      <div class="price-card">
        <div class="price-header">
          <h3>Atelier</h3>
          <div class="amount">R$ 497<span>/mês</span></div>
        </div>
        <ul class="price-features">
          <li>Experiência White Label</li>
          <li><strong>Auditório Virtual</strong></li>
          <li>Domínio Próprio (Custom)</li>
          <li>Equipes (até 3 prof.)</li>
          <li>Gravação ilimitada</li>
          <li>Suporte VIP Onboarding</li>
        </ul>
        <a href="#" class="btn-price">Selecionar</a>
      </div>
    </div>
  </section>

  <!-- FINAL CTA -->
  <section class="final-cta">
    <h2>O seu próximo paciente vai entrar pela porta do Google Meet ou pela porta do seu Consultór.io?</h2>
    <a href="#planos" class="btn-primary">Criar meu Consultório Agora — É Grátis</a>
  </section>

  <!-- FOOTER -->
  <footer>
    <a href="#" class="nav-logo">consultor<span>.io</span></a>
    <ul class="footer-links">
      <li><a href="#">Privacidade</a></li>
      <li><a href="#">Termos de Uso</a></li>
      <li><a href="#">Contato</a></li>
    </ul>
  </footer>

  <script>
    lucide.createIcons();
  </script>
</body>

</html>