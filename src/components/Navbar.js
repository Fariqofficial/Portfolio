import React, { useState } from 'react';
import { StyleSheet, Text, TouchableOpacity, View, Image, Linking } from 'react-native';
import { usePortfolioStore } from '../store/usePortfolioStore';
import { COLORS } from '../constants/colors';

const SocialButton = ({ icon, url, isDarkMode }) => {
  const [isHovered, setIsHovered] = useState(false);

  const hoverBg = isDarkMode ? 'rgba(255, 255, 255, 0.12)' : 'rgba(15, 23, 42, 0.08)';

  return (
    <TouchableOpacity
      activeOpacity={0.7}
      onPress={() => url && Linking.openURL(url)}
      onMouseEnter={() => setIsHovered(true)}
      onMouseLeave={() => setIsHovered(false)}
      style={[
        styles.socialBtn,
        { backgroundColor: isHovered ? hoverBg : 'transparent' },
      ]}
    >
      <Image
        source={typeof icon === 'string' ? { uri: icon } : icon}
        style={styles.socialIcon}
        resizeMode="contain"
      />
    </TouchableOpacity>
  );
};

export const Navbar = () => {
  const { isDarkMode, toggleTheme } = usePortfolioStore();

  const socialLinks = [
    {
      id: 'github',
      icon: require('../assets/icons/ic_github.png'),
      url: 'https://github.com/Fariqofficial',
    },
    {
      id: 'linkedin',
      icon: require('../assets/icons/ic_linkedin.png'),
      url: 'https://www.linkedin.com/in/fariq-naufal-diaz/',
    },
    {
      id: 'gmail',
      icon: require('../assets/icons/ic_gmail.png'),
      url: 'mailto:fariqn.diaz22@gmail.com',
    },
  ];

  return (
    <View
      style={[
        styles.nav,
        {
          backgroundColor: isDarkMode ? COLORS.navPrimary : COLORS.borderLight,
          borderBottomColor: isDarkMode ? COLORS.borderDark : COLORS.borderLight,
        },
      ]}
    >
      <Text
        style={[
          styles.brand,
          { color: isDarkMode ? COLORS.textPrimary : COLORS.navPrimary },
        ]}
      >
        Riqsu
        <Text style={{ color: isDarkMode ? COLORS.textSecondary : COLORS.navyLight }}>
          Dev
        </Text>
      </Text>

      <View style={styles.rightGroup}>

        <View style={styles.socialRow}>
          {socialLinks.map((item) => (
            <SocialButton
              key={item.id}
              icon={item.icon}
              url={item.url}
              isDarkMode={isDarkMode}
            />
          ))}
        </View>

        {/* Switcher Dark Mode */}
        <TouchableOpacity activeOpacity={0.8} onPress={toggleTheme}>
          <View
            style={[
              styles.switchContainer,
              { backgroundColor: isDarkMode ? '#334155' : '#CBD5E1' },
            ]}
          >
            <View
              style={[
                styles.thumbContainer,
                {
                  backgroundColor: isDarkMode ? '#00BDD6' : '#F59E0B',
                  alignSelf: isDarkMode ? 'flex-end' : 'flex-start',
                },
              ]}
            >
              <Text style={styles.iconText}>{isDarkMode ? '🌙' : '☀️'}</Text>
            </View>
          </View>
        </TouchableOpacity>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  nav: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 40,
    paddingVertical: 20,
    borderBottomWidth: 1,
  },
  brand: {
    fontSize: 24,
    fontWeight: '800',
  },
  rightGroup: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 16,
  },
  socialRow: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
  },
  socialBtn: {
    width: 36,
    height: 36,
    borderRadius: 8,
    justifyContent: 'center',
    alignItems: 'center',
  },
  socialIcon: {
    width: 20,
    height: 20,
  },
  switchContainer: {
    width: 60,
    height: 25,
    borderRadius: 20,
    padding: 3,
    justifyContent: 'center',
  },
  thumbContainer: {
    width: 24,
    height: 24,
    borderRadius: 13,
    justifyContent: 'center',
    alignItems: 'center',
    elevation: 2,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 1 },
    shadowOpacity: 0.2,
    shadowRadius: 1.41,
  },
  iconText: {
    fontSize: 13,
  },
});