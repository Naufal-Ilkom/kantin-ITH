import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';

const LandingPage = () => {
  const navigate = useNavigate();
  const [scrolled, setScrolled] = useState(false);

  useEffect(() => {
    const handleScroll = () => setScrolled(window.scrollY > 50);
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  const menuItems = [
    { name: 'Nasi Goreng Spesial', price: 'Rp 15.000', category: 'Makanan', emoji: '🍳', color: '#FFF3E0' },
    { name: 'Es Teh Manis', price: 'Rp 5.000', category: 'Minuman', emoji: '🧋', color: '#E3F2FD' },
    { name: 'Mie Ayam Bakso', price: 'Rp 18.000', category: 'Makanan', emoji: '🍜', color: '#FCE4EC' },
    { name: 'Donat Cokelat', price: 'Rp 8.000', category: 'Dessert', emoji: '🍩', color: '#F3E5F5' },
    { name: 'Ayam Penyet', price: 'Rp 20.000', category: 'Makanan', emoji: '🍗', color: '#FFF8E1' },
    { name: 'Jus Alpukat', price: 'Rp 12.000', category: 'Minuman', emoji: '🥑', color: '#E8F5E9' },
  ];

  const steps = [
    { icon: '📲', title: 'Buka & Pilih', desc: 'Login, cari menu favoritmu dari berbagai kantin yang tersedia di ITH.' },
    { icon: '🛒', title: 'Tambah ke Keranjang', desc: 'Pilih menu dan jumlah sesuai kebutuhanmu, bayar langsung dari saldo.' },
    { icon: '✅', title: 'Pesanan Siap!', desc: 'Penjual akan memproses pesananmu. Ambil saat sudah selesai.' },
  ];

  const features = [
    { icon: '⚡', title: 'Pesan Lebih Cepat', desc: 'Tidak perlu antri panjang. Pesan dari mana saja dalam kampus.' },
    { icon: '💳', title: 'Bayar dengan Saldo', desc: 'Top up saldo sekali, nikmati kemudahan transaksi tanpa uang tunai.' },
    { icon: '⭐', title: 'Ulasan & Rating', desc: 'Lihat rating menu sebelum pesan. Bagikan pengalamanmu untuk komunitas.' },
    { icon: '🔒', title: 'Aman & Terlindungi', desc: 'Dana kamu ditahan sistem sampai pesanan dikonfirmasi selesai.' },
  ];

  return (
    <div style={{ fontFamily: '"Plus Jakarta Sans", sans-serif', color: '#1e293b', overflowX: 'hidden' }}>
      
      {/* NAVBAR */}
      <nav style={{
        position: 'fixed', top: 0, left: 0, right: 0, zIndex: 1000,
        background: scrolled ? 'rgba(255,255,255,0.95)' : 'transparent',
        backdropFilter: scrolled ? 'blur(12px)' : 'none',
        borderBottom: scrolled ? '1px solid #f1f5f9' : 'none',
        transition: 'all 0.3s ease',
        padding: '18px 40px',
        display: 'flex', alignItems: 'center', justifyContent: 'space-between'
      }}>
        <div style={{ fontSize: '24px', fontWeight: '800', color: '#1e293b' }}>
          Kantin<span style={{ color: '#FF8C00' }}>ITH</span>
        </div>
        <div style={{ display: 'flex', gap: '12px', alignItems: 'center' }}>
          <button
            onClick={() => navigate('/login')}
            style={{
              background: 'none', border: '2px solid #FF8C00', color: '#FF8C00',
              padding: '10px 22px', borderRadius: '12px', fontWeight: '700',
              fontSize: '14px', cursor: 'pointer', fontFamily: 'inherit', transition: '0.2s'
            }}
            onMouseOver={(e) => { e.currentTarget.style.background = '#FF8C00'; e.currentTarget.style.color = 'white'; }}
            onMouseOut={(e) => { e.currentTarget.style.background = 'none'; e.currentTarget.style.color = '#FF8C00'; }}
          >
            Masuk
          </button>
          <button
            onClick={() => navigate('/register')}
            style={{
              background: '#FF8C00', border: 'none', color: 'white',
              padding: '10px 22px', borderRadius: '12px', fontWeight: '700',
              fontSize: '14px', cursor: 'pointer', fontFamily: 'inherit',
              boxShadow: '0 4px 12px rgba(255,140,0,0.35)', transition: '0.2s'
            }}
            onMouseOver={(e) => e.currentTarget.style.transform = 'translateY(-2px)'}
            onMouseOut={(e) => e.currentTarget.style.transform = 'translateY(0)'}
          >
            Daftar Gratis
          </button>
        </div>
      </nav>

      {/* HERO SECTION */}
      <section style={{
        minHeight: '100vh',
        background: 'linear-gradient(160deg, #FFF8F0 0%, #FDF5E6 50%, #FFF3E0 100%)',
        display: 'flex', alignItems: 'center', justifyContent: 'center',
        padding: '120px 40px 80px',
        position: 'relative',
        overflow: 'hidden'
      }}>
        {/* Decorative circles */}
        <div style={{ position: 'absolute', top: '15%', right: '10%', width: '300px', height: '300px', borderRadius: '50%', background: 'rgba(255,140,0,0.07)', pointerEvents: 'none' }} />
        <div style={{ position: 'absolute', bottom: '10%', left: '5%', width: '200px', height: '200px', borderRadius: '50%', background: 'rgba(255,140,0,0.05)', pointerEvents: 'none' }} />

        <div style={{ maxWidth: '900px', textAlign: 'center', position: 'relative', zIndex: 1 }}>
          {/* Badge */}
          <div style={{
            display: 'inline-block',
            background: 'rgba(255,140,0,0.12)', color: '#e07b00',
            padding: '8px 20px', borderRadius: '100px',
            fontSize: '13px', fontWeight: '700', marginBottom: '28px',
            border: '1px solid rgba(255,140,0,0.2)'
          }}>
            🎓 Khusus untuk Civitas Akademika ITH
          </div>

          <h1 style={{
            fontSize: 'clamp(36px, 6vw, 72px)',
            fontWeight: '800', margin: '0 0 20px',
            lineHeight: '1.1', color: '#0f172a'
          }}>
            Kantin Kampus<br />
            <span style={{ color: '#FF8C00' }}>Order cepat selesai cepat</span>
          </h1>

          <p style={{
            fontSize: 'clamp(16px, 2vw, 20px)',
            color: '#64748b', maxWidth: '580px', margin: '0 auto 40px',
            lineHeight: '1.7', fontWeight: '500'
          }}>
            Pesan makanan & minuman dari kantin ITH tanpa antri. Bayar mudah dengan saldo digital, pesanan siap tinggal ambil.
          </p>

          <div style={{ display: 'flex', gap: '14px', justifyContent: 'center', flexWrap: 'wrap' }}>
            <button
              onClick={() => navigate('/register')}
              style={{
                background: '#FF8C00', color: 'white',
                padding: '16px 36px', borderRadius: '16px',
                fontWeight: '800', fontSize: '16px', cursor: 'pointer',
                border: 'none', fontFamily: 'inherit',
                boxShadow: '0 12px 30px rgba(255,140,0,0.4)', transition: '0.2s'
              }}
              onMouseOver={(e) => e.currentTarget.style.transform = 'translateY(-3px)'}
              onMouseOut={(e) => e.currentTarget.style.transform = 'translateY(0)'}
            >
              Mulai Pesan Sekarang →
            </button>
            <button
              onClick={() => document.getElementById('how-it-works').scrollIntoView({ behavior: 'smooth' })}
              style={{
                background: 'white', color: '#334155',
                padding: '16px 36px', borderRadius: '16px',
                fontWeight: '700', fontSize: '16px', cursor: 'pointer',
                border: '2px solid #e2e8f0', fontFamily: 'inherit', transition: '0.2s'
              }}
              onMouseOver={(e) => { e.currentTarget.style.borderColor = '#FF8C00'; e.currentTarget.style.color = '#FF8C00'; }}
              onMouseOut={(e) => { e.currentTarget.style.borderColor = '#e2e8f0'; e.currentTarget.style.color = '#334155'; }}
            >
              Cara Kerja
            </button>
          </div>

          {/* Stats */}
          <div style={{
            display: 'flex', gap: '40px', justifyContent: 'center',
            marginTop: '60px', flexWrap: 'wrap'
          }}>
            {[
              { num: '5+', label: 'Kantin Tersedia' },
              { num: '50+', label: 'Menu Pilihan' },
              { num: '100%', label: 'Cashless' },
            ].map((s, i) => (
              <div key={i} style={{ textAlign: 'center' }}>
                <div style={{ fontSize: '32px', fontWeight: '800', color: '#FF8C00' }}>{s.num}</div>
                <div style={{ fontSize: '13px', color: '#94a3b8', fontWeight: '600', marginTop: '4px' }}>{s.label}</div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* MENU PREVIEW SECTION */}
      <section style={{ padding: '80px 40px', background: 'white' }}>
        <div style={{ maxWidth: '1000px', margin: '0 auto' }}>
          <div style={{ textAlign: 'center', marginBottom: '50px' }}>
            <h2 style={{ fontSize: 'clamp(28px, 4vw, 42px)', fontWeight: '800', margin: '0 0 12px', color: '#0f172a' }}>
              Menu Favorit Hari Ini
            </h2>
            <p style={{ color: '#64748b', fontSize: '16px', fontWeight: '500' }}>
              Dari makanan berat sampai minuman segar, semua ada di KantinITH
            </p>
          </div>

          <div style={{
            display: 'grid',
            gridTemplateColumns: 'repeat(auto-fill, minmax(280px, 1fr))',
            gap: '20px'
          }}>
            {menuItems.map((item, i) => (
              <div key={i} style={{
                background: item.color,
                borderRadius: '20px',
                padding: '24px',
                display: 'flex', alignItems: 'center', gap: '16px',
                border: '1px solid rgba(0,0,0,0.04)',
                transition: 'transform 0.2s, box-shadow 0.2s',
                cursor: 'default'
              }}
              onMouseOver={(e) => { e.currentTarget.style.transform = 'translateY(-4px)'; e.currentTarget.style.boxShadow = '0 12px 30px rgba(0,0,0,0.08)'; }}
              onMouseOut={(e) => { e.currentTarget.style.transform = 'translateY(0)'; e.currentTarget.style.boxShadow = 'none'; }}
              >
                <div style={{ fontSize: '42px', lineHeight: 1 }}>{item.emoji}</div>
                <div>
                  <div style={{ fontSize: '11px', fontWeight: '700', color: '#FF8C00', textTransform: 'uppercase', letterSpacing: '0.5px', marginBottom: '4px' }}>
                    {item.category}
                  </div>
                  <div style={{ fontWeight: '800', fontSize: '16px', color: '#0f172a', marginBottom: '4px' }}>{item.name}</div>
                  <div style={{ fontWeight: '700', fontSize: '15px', color: '#FF8C00' }}>{item.price}</div>
                </div>
              </div>
            ))}
          </div>

          <div style={{ textAlign: 'center', marginTop: '40px' }}>
            <button
              onClick={() => navigate('/login')}
              style={{
                background: 'none', border: '2px solid #FF8C00', color: '#FF8C00',
                padding: '14px 32px', borderRadius: '14px', fontWeight: '700',
                fontSize: '15px', cursor: 'pointer', fontFamily: 'inherit', transition: '0.2s'
              }}
              onMouseOver={(e) => { e.currentTarget.style.background = '#FF8C00'; e.currentTarget.style.color = 'white'; }}
              onMouseOut={(e) => { e.currentTarget.style.background = 'none'; e.currentTarget.style.color = '#FF8C00'; }}
            >
              Lihat Semua Menu →
            </button>
          </div>
        </div>
      </section>

      {/* HOW IT WORKS */}
      <section id="how-it-works" style={{ padding: '80px 40px', background: '#FDF5E6' }}>
        <div style={{ maxWidth: '900px', margin: '0 auto' }}>
          <div style={{ textAlign: 'center', marginBottom: '50px' }}>
            <h2 style={{ fontSize: 'clamp(28px, 4vw, 42px)', fontWeight: '800', margin: '0 0 12px', color: '#0f172a' }}>
              Cara Pesannya Gampang Banget
            </h2>
            <p style={{ color: '#64748b', fontSize: '16px', fontWeight: '500' }}>
              3 langkah simpel, pesanan sampai di tanganmu
            </p>
          </div>

          <div style={{
            display: 'grid',
            gridTemplateColumns: 'repeat(auto-fit, minmax(240px, 1fr))',
            gap: '24px'
          }}>
            {steps.map((step, i) => (
              <div key={i} style={{
                background: 'white',
                borderRadius: '24px',
                padding: '32px 28px',
                textAlign: 'center',
                border: '1px solid #f1e8d0',
                position: 'relative'
              }}>
                <div style={{
                  position: 'absolute', top: '-14px', left: '28px',
                  background: '#FF8C00', color: 'white',
                  width: '28px', height: '28px', borderRadius: '8px',
                  display: 'flex', alignItems: 'center', justifyContent: 'center',
                  fontWeight: '800', fontSize: '13px'
                }}>
                  {i + 1}
                </div>
                <div style={{ fontSize: '48px', marginBottom: '16px', lineHeight: 1 }}>{step.icon}</div>
                <h3 style={{ fontWeight: '800', fontSize: '18px', margin: '0 0 10px', color: '#0f172a' }}>{step.title}</h3>
                <p style={{ color: '#64748b', fontSize: '14px', lineHeight: '1.6', margin: 0 }}>{step.desc}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* FEATURES */}
      <section style={{ padding: '80px 40px', background: 'white' }}>
        <div style={{ maxWidth: '1000px', margin: '0 auto' }}>
          <div style={{ textAlign: 'center', marginBottom: '50px' }}>
            <h2 style={{ fontSize: 'clamp(28px, 4vw, 42px)', fontWeight: '800', margin: '0 0 12px', color: '#0f172a' }}>
              Kenapa Harus KantinITH?
            </h2>
          </div>

          <div style={{
            display: 'grid',
            gridTemplateColumns: 'repeat(auto-fill, minmax(220px, 1fr))',
            gap: '20px'
          }}>
            {features.map((f, i) => (
              <div key={i} style={{
                background: '#fafafa',
                borderRadius: '20px',
                padding: '28px 24px',
                border: '1px solid #f1f5f9',
                transition: 'border-color 0.2s, background 0.2s'
              }}
              onMouseOver={(e) => { e.currentTarget.style.borderColor = '#ffd190'; e.currentTarget.style.background = '#FFFBF5'; }}
              onMouseOut={(e) => { e.currentTarget.style.borderColor = '#f1f5f9'; e.currentTarget.style.background = '#fafafa'; }}
              >
                <div style={{ fontSize: '32px', marginBottom: '14px', lineHeight: 1 }}>{f.icon}</div>
                <h3 style={{ fontWeight: '800', fontSize: '16px', margin: '0 0 8px', color: '#0f172a' }}>{f.title}</h3>
                <p style={{ color: '#64748b', fontSize: '14px', lineHeight: '1.6', margin: 0 }}>{f.desc}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* CTA SECTION */}
      <section style={{
        padding: '80px 40px',
        background: 'linear-gradient(135deg, #FF8C00 0%, #ffb347 100%)',
        textAlign: 'center'
      }}>
        <div style={{ maxWidth: '600px', margin: '0 auto' }}>
          <h2 style={{ fontSize: 'clamp(28px, 4vw, 44px)', fontWeight: '800', color: 'white', margin: '0 0 16px', lineHeight: '1.2' }}>
            Siap Order Makan Siang?
          </h2>
          <p style={{ color: 'rgba(255,255,255,0.85)', fontSize: '17px', marginBottom: '36px', lineHeight: '1.6' }}>
            Bergabung sekarang dan nikmati kemudahan memesan makanan kampus tanpa ribet.
          </p>
          <div style={{ display: 'flex', gap: '14px', justifyContent: 'center', flexWrap: 'wrap' }}>
            <button
              onClick={() => navigate('/register')}
              style={{
                background: 'white', color: '#FF8C00',
                padding: '16px 36px', borderRadius: '16px',
                fontWeight: '800', fontSize: '16px', cursor: 'pointer',
                border: 'none', fontFamily: 'inherit',
                boxShadow: '0 8px 25px rgba(0,0,0,0.15)', transition: '0.2s'
              }}
              onMouseOver={(e) => e.currentTarget.style.transform = 'translateY(-3px)'}
              onMouseOut={(e) => e.currentTarget.style.transform = 'translateY(0)'}
            >
              Daftar sebagai Pembeli
            </button>
            <button
              onClick={() => navigate('/register')}
              style={{
                background: 'rgba(255,255,255,0.2)', color: 'white',
                padding: '16px 36px', borderRadius: '16px',
                fontWeight: '700', fontSize: '16px', cursor: 'pointer',
                border: '2px solid rgba(255,255,255,0.5)', fontFamily: 'inherit', transition: '0.2s'
              }}
              onMouseOver={(e) => e.currentTarget.style.background = 'rgba(255,255,255,0.3)'}
              onMouseOut={(e) => e.currentTarget.style.background = 'rgba(255,255,255,0.2)'}
            >
              Daftar sebagai Penjual
            </button>
          </div>
        </div>
      </section>

      {/* FOOTER */}
      <footer style={{ background: '#0f172a', padding: '40px', textAlign: 'center' }}>
        <div style={{ fontSize: '22px', fontWeight: '800', color: 'white', marginBottom: '10px' }}>
          Kantin<span style={{ color: '#FF8C00' }}>ITH</span>
        </div>
        <p style={{ color: '#64748b', fontSize: '14px', margin: 0 }}>
          © 2025 KantinITH — Sistem Kantin Digital Institut Teknologi Bacharuddin Jusuf Habibie. Semua hak dilindungi.
        </p>
      </footer>
    </div>
  );
};

export default LandingPage;
