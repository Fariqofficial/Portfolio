import React from 'react';
import { View, ScrollView, StyleSheet } from 'react-native';
import { COLORS } from '../constants/colors';
import { usePortfolioStore } from '../store/usePortfolioStore';
import { Navbar } from '../components/Navbar';
import { HomePage } from './home/HomePage';
import { PortfolioPage } from './portfolio/PortfolioPage';
import { ContactPage } from './contact/ContactPage';

export const MainLayoutScreen = () => {
  const { isDarkMode, activeTab } = usePortfolioStore();

  const backgroundColor = isDarkMode ? COLORS.navPrimary : COLORS.borderLight;

  return (
    <View style={[styles.mainContainer, { backgroundColor }]}>
      <Navbar />
      <ScrollView
        contentContainerStyle={styles.scrollArea}
        showsVerticalScrollIndicator={false}
      >
        {/* {activeTab === 'Home' && <HomePage />} */}
        {/* {activeTab === 'Portfolio' && <PortfolioPage />}
        {activeTab === 'Contact' && <ContactPage />} */}
        
          <>
            <HomePage />
            <PortfolioPage />
            <ContactPage />
          </>
       
      </ScrollView>
    </View>
  );
};

const styles = StyleSheet.create({
  mainContainer: {
    flex: 1,
  },
  scrollArea: {
    paddingHorizontal: 20,
    paddingVertical: 30,
    alignItems: 'center',
  },
});