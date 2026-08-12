import React, { createContext, useContext, useState } from "react";

const PortfolioContext = createContext();

export const PortfolioProvider = ({ children }) => {
    const [isDarkMode, setIsDarkMode] = useState(false);
    const [activeTab, setActiveTab] = useState("Home");

    const toggleTheme = () => setIsDarkMode((prev) => !prev);

    return(
        <PortfolioContext.Provider value={{ isDarkMode, toggleTheme, activeTab, setActiveTab }}>
            {children}
        </PortfolioContext.Provider>
    );
}

export const usePortfolioStore = () => useContext(PortfolioContext);