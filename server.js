// Add this near the top after imports
const { execSync } = require('child_process');
try {
    const version = execSync('yt-dlp --version').toString().trim();
    console.log(`✅ yt-dlp version: ${version}`);
} catch (err) {
    console.error('❌ yt-dlp not found or error:', err.message);
}
