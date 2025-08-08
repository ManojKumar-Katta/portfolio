# Katta Manoj Kumar - Portfolio Website

A modern, responsive portfolio w## 🚀 Setup and Usage

### Local Development
1. Clone or download the repository
2. Open `index.html` in a web browser
3. All files are linked relatively, so the portfolio will work offline

### Docker Deployment (Recommended)

#### Prerequisites
- Docker Desktop installed on your system
- Docker Compose (usually included with Docker Desktop)

#### Quick Start
**Windows Users:**
```bash
# Run the deployment script
deploy.bat
```

**Linux/Mac Users:**
```bash
# Make the script executable
chmod +x deploy.sh

# Run the deployment script
./deploy.sh
```

#### Manual Docker Commands
```bash
# Build the Docker image
docker build -t manoj-portfolio:latest .

# Run with Docker Compose
docker-compose up -d

# Or run directly with Docker
docker run -d -p 8080:80 --name manoj-portfolio manoj-portfolio:latest
```

#### Access the Portfolio
- **Portfolio URL**: http://localhost:8080
- **Health Check**: http://localhost:8080/health

#### Docker Management Commands
```bash
# View logs
docker-compose logs -f

# Stop the container
docker-compose down

# Restart the container
docker-compose restart

# Remove everything
docker-compose down --volumes --rmi all
```e showcasing the academic achievements, professional experience, projects, and skills of Katta Manoj Kumar, a Computer Science Engineering student at VIT-AP.

## 🌟 Features

- **Responsive Design**: Fully responsive layout that works on all devices
- **Modern UI/UX**: Clean, professional design with smooth animations
- **Interactive Navigation**: Smooth scrolling navigation with active link highlighting
- **Contact Form**: Functional contact form with email integration
- **Animated Elements**: Smooth entrance animations and hover effects
- **Mobile-Friendly**: Optimized for mobile devices with hamburger menu

## 📋 Sections

1. **Hero Section**: Introduction with contact information and social links
2. **About**: Brief overview and introduction
3. **Education**: Academic background and achievements
4. **Experience**: Professional experience and internships
5. **Projects**: Detailed project showcases with technologies used
6. **Skills**: Technical skills categorized by type
7. **Achievements**: Awards, rankings, and notable accomplishments
8. **Activities**: Extracurricular activities and leadership roles
9. **Contact**: Contact form and information

## 🛠️ Technologies Used

- **HTML5**: Semantic markup and structure
- **CSS3**: Modern styling with Flexbox, Grid, and animations
- **JavaScript**: Interactive functionality and smooth user experience
- **Font Awesome**: Icons for enhanced visual appeal
- **Google Fonts**: Inter font family for typography

## 📱 Responsive Breakpoints

- **Desktop**: 1200px and above
- **Tablet**: 768px - 1199px
- **Mobile**: Below 768px

## 🎨 Color Palette

- **Primary Blue**: #2c5aa0
- **Gradient**: #667eea to #764ba2
- **Accent**: #ff6b6b
- **Background**: #f8f9fa
- **Text**: #333333

## 🚀 Features Highlights

### Academic Excellence
- **Current CGPA**: 9.06/10 at VIT-AP
- **High School**: 100% in State Board
- **Competitive Exams**: Top 1% in AP EAPCET and TS EAMCET

### Professional Experience
- **Research Intern** at IIT Hyderabad (2025)
- **Amazon ML Summer School** participant (2024)

### Technical Projects
- **Byte2Vec**: Custom bytecode embedding pipeline with 95%+ accuracy
- **Code Clone Detection**: Siamese Neural Networks achieving 96% accuracy

### Technical Skills
- **Languages**: Java, Python, R, C
- **Frameworks**: Spring, SpringBoot, PyTorch, NumPy, Pandas
- **Databases**: MySQL, PostgreSQL, Oracle
- **Tools**: Git, GitHub, GitLab

## 📞 Contact Information

- **Phone**: +91-6281215816
- **Email**: kattamanojkumar2005@gmail.com
- **LinkedIn**: [Profile Link]
- **GitHub**: [Profile Link]

## 🔧 Setup and Usage

1. Clone or download the repository
2. Open `index.html` in a web browser
3. All files are linked relatively, so the portfolio will work offline

## 📄 Files Structure

```
portfolio/
├── index.html              # Main HTML file
├── styles.css              # CSS styles and animations
├── script.js               # JavaScript functionality
├── README.md               # Project documentation
├── Manoj Kumar Katta_VIT.pdf  # Resume PDF
├── Dockerfile              # Docker container configuration
├── docker-compose.yml      # Docker Compose configuration
├── nginx.conf              # Custom Nginx configuration
├── .dockerignore           # Docker ignore file
├── deploy.sh               # Linux/Mac deployment script
└── deploy.bat              # Windows deployment script
```

## 🌐 Browser Compatibility

- Chrome (recommended)
- Firefox
- Safari
- Edge
- Mobile browsers

## ⚡ Performance Features

- Optimized images and assets
- Smooth scrolling and animations
- Lazy loading for better performance
- Mobile-first responsive design

## 📈 Future Enhancements

- [ ] Dark/Light theme toggle
- [ ] Multi-language support
- [ ] Blog section integration
- [ ] Advanced contact form with backend
- [ ] Project filtering and search
- [ ] Testimonials section
- [ ] Skills proficiency bars
- [ ] Interactive project demos

## 🤝 Contributing

This is a personal portfolio website. For suggestions or improvements, please contact through the provided channels.

## 📜 License

This project is for personal use and showcasing purposes.

---

*Last Updated: August 2025*
