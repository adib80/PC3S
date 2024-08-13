### **Personalized EV Charging Station Selection Scheme (PC3S)**
As electric vehicles (EVs) maintain to benefit recognition for its environmental blessings and cost financial savings, the want for a green and personalized charging experience has emerge as more and more vital. However, with the developing quantity of charging stations, selecting the right one which meets your precise desires may be quite hard. That's wherein our Personalized Charging Station Selection System (PC3S) comes in.

PC3S is designed to simplify the process of finding the best charging station for you by taking into account what really matters—whether it’s distance, cost, waiting time, charging time or available amenities. By combining advanced decision-making techniques like Fuzzy Analytic Hierarchy Process (FAHP) for weighting process to be transferred to the second process which is the recommendation process, we’re able to tailor recommendations that are just right for you, even if your preferences aren’t set in stone.

What sets PC3S apart is its ability to handle uncertainty in user preferences through fuzzy logic, ensuring that even when you’re unsure about what you want, the system can still guide you to the best choice. And in our tests, it didn’t just perform well—it outperformed other well-known methods like VIKOR, SAW, ELECTRE, and PROMETHEE.


### **Key Features**

1. **Multi-Attributes Decision-Making:** PC3S takes into account multiple user-defined criteria like travel distance, waiting time, charging time, pricing, and amenities. (These criteria my be extended to add more criteria).
2. **Fuzzy Logic Integration weighting process:** Allows handling uncertainties in user preferences. 
3. **EVCS Recommendation:** Provides a ranked list of EVCS options according to the calculated criteria weights.


### **Dataset**

The study utilized a data obtained from the official website of the US Department of Energy. The dataset consisted of information on electric vehicle charging stations situated in US. The dataset provides valuable information about the characteristics and attributes of these charging stations encompassing details such as their geographic coordinates, unique identification numbers, types of charging connectors available, charging speeds, pricing structures, and other relevant details. Due to limited availability of data on waiting times, random generation techniques were employed to simulate waiting time values. The research involved conducting experiments under various scenarios, considering a range of 2 to 50 charging stations within the vicinity of the electric vehicle. The vehicle's location on a map was also selected randomly. Travel times to each charging station were computed based on an average speed of 60 km/h. The experiments were repeated 100 times to ensure statistical reliability, and the outcomes were averaged to provide more robust results.


### **Conclusion**


PC3S affords a comprehensive and user-centric approach to Electric Vehicle Charging Station (EVCS) selection, leveraging advanced Multi-Attributes Decision-Making (MADM) techniques together with Fuzzy logic Analytic Hierarchy Process (FAHP) incorporated with the weighting process and Technique for Order of Preference by using Similarity to Ideal Solution (TOPSIS) incorporated with the recommendation process. We have evolved a strong scheme that tailors charging station recommendations based totally on user preferences, making sure that the selected EVCS meets the particular preferences of each person user.

Compared to different methods obtainable, our model stands out for its accuracy and reliability, specifically in keeping solid rankings and reducing errors. By incorporating normalization and fuzzy logic, our system could make well-knowledgeable decisions, even if customers are not totally sure about their choices.

We've made our dataset and code available here on GitHub to guide similarly studies and development within the EV charging infrastructure field. We wish that others within the community will discover our work, provide comments, and build on it to make EV charging extra green and user satisfaction.

Our aim is to contribute to the developing adoption of electric cars through enhancing the way charging stations are selected, ultimately making sustainable transportation greater accessible and convenient for all of us.
