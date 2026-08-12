import React from 'react';
import { usePortfolioStore } from "../../store/usePortfolioStore";
import { PORTFOLIO_DATA } from "../../constants/data";
import { View } from "react-native";
import styles from "./style";
import { COLORS } from "../../constants/colors";
import { ContactInfo } from '../../components/ContactInfo';

export const ContactPage = () => {
    const { isDarkMode } = usePortfolioStore();
    const { contacts } = PORTFOLIO_DATA;

    return (
        <View style={[ styles.container, { borderTopColor: isDarkMode ? COLORS.borderDark : COLORS.borderLight }]}>
            <View style={styles.contactRow}>
                <ContactInfo title="Address" value={contacts.address} isDark={isDarkMode} />
                <ContactInfo title="Phone" value={contacts.phone} isDark={isDarkMode} />
                <ContactInfo title="Email" value={contacts.email} isDark={isDarkMode} />
                <ContactInfo title="Whatsapp" value={contacts.whatsapp} isDark={isDarkMode} />
            </View>
        </View>
    );
};