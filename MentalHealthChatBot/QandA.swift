import Foundation
import NaturalLanguage

// https://www.kaggle.com/datasets/narendrageek/mental-health-faq-for-chatbot
class QandA {
    var qaDict: [[String]: [String]]
    init() {
        self.qaDict = [[a1]: [q1],
                       [a2]: [q2],
                       [a3]: [q3],
                       [a4]: [q4],
                       [a5]: [q5, q5a], //Can people with mental illness recover? Mentally sick individuals are capable of recovery?
                       [a6]: [q6],
                       [a7]: [q7],
                       [a8]: [q8],
                       [a9]: [q9],
                       [a10]: [q10],
                       [a11]: [q11],
                       [a12]: [q12],
                       [a13]: [q13],
                       [a14]: [q14],
                       [a15]: [q15],
                       [a16]: [q16],
                       [a17]: [q17],
                       [a18]: [q18],
                       [a19]: [q19],
                       [a20]: [q20],
                       [a21]: [q21],
                       [a22]: [q22],
                       [a23]: [q23],
                       [a24]: [q24],
                       [a25]: [q25],
                       [a26]: [q26],
                       [a27]: [q27],
                       [a28]: [q28],
                       [a29]: [q29],
                       [a30]: [q30],
                       [a31]: [q31],
                       [a32]: [q32],
                       [a33]: [q33],
                       [a34]: [q34],
                       [a35]: [q35],
                       [a36]: [q36],
                       [a37]: [q37],
                       [a38]: [q38],
                       [a39]: [q39],
                       [a40]: [q40],
                       [a41]: [q41],
                       [a42]: [q42],
                       [a43]: [q43],
                       [a44]: [q44],
                       [a45]: [q45],
                       [a46]: [q46],
                       [a47]: [q47],
                       [a48]: [q48],
                       [a49]: [q49],
                       [a50]: [q50],
                       [a51]: [q51],
                       [a52]: [q52],
                       [a53]: [q53],
                       [a54]: [q54],
                       [a55]: [q55],
                       [a56]: [q56],
                       [a57]: [q57],
                       [a58]: [q58],
                       [a59]: [q59],
                       [a60]: [q60],
                       [a61]: [q61],
                       [a62]: [q62],
                       [a63]: [q63],
                       [a64]: [q64],
                       [a65]: [q65],
                       [a66]: [q66],
                       [a67]: [q67],
                       [a68]: [q68],
                       [a69]: [q69],
                       [a70]: [q70],
                       [a71]: [q71],
                       [a72]: [q72],
                       [a73]: [q73],
                       [a74]: [q74],
                       [a75]: [q75],
                       [a76]: [q76],
                       [a77]: [q77],
                       [a78]: [q78],
                       [a79]: [q79],
                       [a80]: [q80],
                       [a81]: [q81],
                       [a82]: [q82],
                       [a83]: [q83],
                       [a84]: [q84],
                       [a85]: [q85],
                       [a86]: [q86],
                       [a87]: [q87],
                       [a88]: [q88],
                       [a89]: [q89],
                       [a90]: [q90],
                       [a91]: [q91],
                       [a92]: [q92],
                       [a93]: [q93],
                       [a94]: [q94],
                       [a95]: [q95],
                       [a96]: [q96],
                       [a97]: [q97],
                       [a98]: [q98]]
    }
    
    func answer(_ question: String) -> String {
        var answer: String = "Sorry I can't help with that"
        // IMPORTANT NOTE TIME 18:45 OF WWDC Make apps smarter with Natural Language https://developer.apple.com/videos/play/wwdc2020/10657/
        if let embedding = NLEmbedding.sentenceEmbedding(for: .english) {
            let query = question
            // optimize?
        //    if let queryVector = embedding.vector(for: query) {
        //        print(queryVector)
        //    }
            var min = 1.0   
            
            for (keys, questions) in QandA().qaDict {
                for (question) in questions {
                    let distance = embedding.distance(between: query, and: question)
                    if distance < min {
                        print(distance, question)
                        min = distance
                        answer = keys.randomElement() ?? keys[0]
                    }
                }
            }
            return answer
        }
        return answer
    }
    
    
    /// MARK: Mental health questions start here
    
    let a1 =
     """
     Mental illnesses are health conditions that disrupt a personâ€™s thoughts, emotions, relationships, and daily functioning. They are associated with distress and diminished capacity to engage in the ordinary activities of daily life.
    Mental illnesses fall along a continuum of severity: some are fairly mild and only interfere with some aspects of life, such as certain phobias. On the other end of the spectrum lie serious mental illnesses, which result in major functional impairment and interference with daily life. These include such disorders as major depression, schizophrenia, and bipolar disorder, and may require that the person receives care in a hospital.
    It is important to know that mental illnesses are medical conditions that have nothing to do with a personâ€™s character, intelligence, or willpower. Just as diabetes is a disorder of the pancreas, mental illness is a medical condition due to the brainâ€™s biology.
    Similarly to how one would treat diabetes with medication and insulin, mental illness is treatable with a combination of medication and social support. These treatments are highly effective, with 70-90 percent of individuals receiving treatment experiencing a reduction in symptoms and an improved quality of life. With the proper treatment, it is very possible for a person with mental illness to be independent and successful.
    """

    let a2 =
     """
     It is estimated that mental illness affects 1 in 5 adults in America, and that 1 in 24 adults have a serious mental illness. Mental illness does not discriminate; it can affect anyone, regardless of gender, age, income, social status, ethnicity, religion, sexual orientation, or background.
    Although mental illness can affect anyone, certain conditions may be more common in different populations. For instance, eating disorders tend to occur more often in females, while disorders such as attention deficit/hyperactivity disorder is more prevalent in children.
    Additionally, all ages are susceptible, but the young and the old are especially vulnerable. Mental illnesses usually strike individuals in the prime of their lives, with 75 percent of mental health conditions developing by the age of 24. This makes identification and treatment of mental disorders particularly difficult, because the normal personality and behavioral changes of adolescence may mask symptoms of a mental health condition.
    Parents and caretakers should be aware of this fact, and take notice of changes in their childâ€™s mood, personality, personal habits, and social withdrawal. When these occur in children under 18, they are referred to as serious emotional disturbances (SEDs).
    """

    let a3 =
     """
     It is estimated that mental illness affects 1 in 5 adults in America, and that 1 in 24 adults have a serious mental illness. Mental illness does not discriminate; it can affect anyone, regardless of gender, age, income, social status, ethnicity, religion, sexual orientation, or background. Although mental illness can affect anyone, certain conditions may be more common in different populations. For instance, eating disorders tend to occur more often in females, while disorders such as attention deficit/hyperactivity disorder is more prevalent in children. Additionally, all ages are susceptible, but the young and the old are especially vulnerable. Mental illnesses usually strike individuals in the prime of their lives, with 75 percent of mental health conditions developing by the age of 24. This makes identification and treatment of mental disorders particularly difficult, because the normal personality and behavioral changes of adolescence may mask symptoms of a mental health condition. Parents and caretakers should be aware of this fact, and take notice of changes in their child’s mood, personality, personal habits, and social withdrawal. When these occur in children under 18, they are referred to as serious emotional disturbances (SEDs).
    """

    let a4 =
     """
     Symptoms of mental health disorders vary depending on the type and severity of the condition. The following is a list of general symptoms that may suggest a mental health disorder, particularly when multiple symptoms are expressed at once.
    In adults:
    Confused thinking
    Long-lasting sadness or irritability
    Extreme highs and lows in mood
    Excessive fear, worrying, or anxiety
    Social withdrawal
    Dramatic changes in eating or sleeping habits
    Strong feelings of anger
    Delusions or hallucinations (seeing or hearing things that are not really there)
    Increasing inability to cope with daily problems and activities
    Thoughts of suicide
    Denial of obvious problems
    Many unexplained physical problems
    Abuse of drugs and/or alcohol
      In older children and pre-teens:
    Abuse of drugs and/or alcohol
    Inability to cope with daily problems and activities
    Changes in sleeping and/or eating habits
    Excessive complaints of physical problems
    Defying authority, skipping school, stealing, or damaging property
    Intense fear of gaining weight
    Long-lasting negative mood, often along with poor appetite and thoughts of death
    Frequent outbursts of anger
      In younger children:
    Changes in school performance
    Poor grades despite strong efforts
    Excessive worrying or anxiety
    Hyperactivity
    Persistent nightmares
    Persistent disobedience and/or aggressive behavior
    Frequent temper tantrums
    """

    let a5 =
     """
     When healing from mental illness, early identification and treatment are of vital importance. Based on the nature of the illness, there are a range of effective treatments available. For any type of treatment, it is essential that the person affected is proactive and fully engaged in their own recovery process.
    Many people with mental illnesses who are diagnosed and treated respond well, although some might experience a return of symptoms. Even in such cases, with careful monitoring and management of the disorder, it is still quite possible to live a fulfilled and productive life.
    """

    let a6 =
     """
     Although this website cannot substitute for professional advice, we encourage those with symptoms to talk to their friends and family members and seek the counsel of a mental health professional. The sooner the mental health condition is identified and treated, the sooner they can get on the path to recovery.
    If you know someone who is having problems, don't assume that the issue will resolve itself. Let them know that you care about them, and that there are treatment options available that will help them heal. Speak with a mental health professional or counselor if you think your friend or family member is experiencing the symptoms of a mental health condition. If the affected loved one knows that you support them, they will be more likely to seek out help.
    """

    let a7 =
     """
     Feeling comfortable with the professional you or your child is working with is critical to the success of the treatment. Finding the professional who best fits your needs may require research. Start by searching for providers in your area.
    """

    let a8 =
     """
     Just as there are different types of medications for physical illness, different treatment options are available for individuals with mental illness. Treatment works differently for different people. It is important to find what works best for you or your child.
    """

    let a9 =
     """
     Since beginning treatment is a big step for individuals and families, it can be very overwhelming. It is important to be as involved and engaged in the treatment process as possible. Some questions you will need to have answered include:
    What is known about the cause of this particular illness?
    Are there other diagnoses where these symptoms are common?
    Do you normally include a physical or neurological examination?
    Are there any additional tests or exams that you would recommend at this point?
    Would you advise an independent opinion from another psychiatrist at this point?
    What program of treatment is the most helpful with this diagnosis?
    Will this program involve services by other specialists? If so, who will be responsible for coordinating these services?
    What do you see as the familyâ€™s role in this program of treatment?
    How much access will the family have to the individuals who are providing the treatment?
    What medications are generally used with this diagnosis?
    How much experience do you have in treating individuals with this illness?
    What can I do to help you in the treatment?
    """

    let a10 =
     """
     There are many types of mental health professionals. The variety of providers and their services may be confusing. Each have various levels of education, training, and may have different areas of expertise. Finding the professional who best fits your needs may require some research.
    """

    let a11 =
     """
     Feeling comfortable with the professional you or your child is working with is critical to the success of your treatment. Finding the professional who best fits your needs may require some research.
    """

    let a12 =
     """
     Beginning treatment is a big step for individuals and families and can be very overwhelming. It is important to continue involvement in the treatment process as much as possible. Some questions you will need to have answered include:
    What is known about the cause of this particular illness?
    Are there other diagnoses where these symptoms are common?
    Do you normally include a physical or neurological examination?
    Are there any additional tests or exams that you would recommend at this point?
    Would you advise an independent opinion from another psychiatrist at this point?
    What program of treatment is the most helpful with this diagnosis?
    Will this program involve services by other specialists? If so, who will be responsible for coordinating these services?
    What do you see as the familyâ€™s role in this program of treatment?
    How much access will the family have to the individuals who are providing the treatment?
    What medications are generally used with this diagnosis? What is the biological effect of this medication, and what do you expect it to accomplish? What are the risks associated with the medication? How soon will we be able to tell if the medication is effective, and how will we know?
    How much experience do you have in treating individuals with this illness?
    What can I do to help you in the treatment?
    """

    let a13 =
     """
     Where you go for help will depend on the nature of the problem and/or symptoms and what best fits you. Often, the best place to start is by talking with someone you trust about your concerns, such as a family member, friend, clergy, healthcare provider, or other professionals. Having this social support is essential in healing from mental illness, and you will be able to ask them for referrals or recommendations for trusted mental health practitioners. Search for mental health resources in your area.
    Secondly, there are people and places throughout Nebraska that provide services to talk, to listen, and to help you on your journey to recovery. Thirdly, many people find peer support a helpful tool that can aid in their recovery. There are a variety of organizations that offer support groups for consumers, their family members, and friends. Some support groups are peer led while others may be led by a mental health professional.
    """

    let a14 =
     """
     The best source of information regarding medications is the physician prescribing them. He or she should be able to answer questions such as:    1. What is the medication supposed to do? 2. When should it begin to take effect, and how will I know when it is effective? 3. How is the medication taken and for how long? What food, drinks, other medicines, and activities should be avoided while taking this medication? 4. What are the side effects and what should be done if they occur? 5. What do I do if a dose is missed? 6. Is there any written information available about this medication? 7. Are there other medications that might be appropriate? 8. If so, why do you prefer the one you have chosen? 9. How do you monitor medications and what symptoms indicate that they should be raised, lowered, or changed? 10. All medications should be taken as directed. Most medications for mental illnesses do not work when taken irregularly, and extra doses can cause severe, sometimes dangerous side effects. Many psychiatric medications begin to have a beneficial effect only after they have been taken for several weeks.
    """

    let a15 =
     """
     It is not uncommon for people to stop taking their medication when they feel their symptoms are under control. Others may choose to stop taking their medication because of its side effects, without realizing that most side effects can be effectively managed. While it may seem reasonable to stop taking the medication, the problem is that most often, the symptoms will return. If you or your child is taking medication, it is very important that you work together with your doctor before making decisions about any changes in your treatment.\nAnother problem with stopping medication, particularly for stopping it abruptly, is that you may develop withdrawal symptoms that can be very unpleasant. If you and your doctor feel a trial off your medicine is a good idea, it is necessary to slowly decrease the dosage of medications so that these symptoms don’t occur.\nIt is important that your doctor and pharmacist work together to make sure your medications are working safely and effectively. You should talk with them about how you are doing and if there are side effects that make you unwilling to continue treatment. They will work with you to develop strategies for minimizing these side effects, or will create a plan for switching to a different treatment that will be a better fit.
    """

    let a16 =
     """
     Some pharmaceutical companies offer prescription assistance programs to individuals and families with financial needs, while others offer special drug discount cards. These programs typically require a doctor’s consent and proof of your financial status. They may also require that you have either no health insurance or no prescription drug benefit through your health insurance.\nIn addition, there are prescription programs you might qualify for. Visit Healthfinder.gov to learn more.
    """

    let a17 =
     """
     Different kinds of therapy are more effective based on the nature of the mental health condition and/or symptoms and the person who has them (for example, children will benefit from a therapist who specializes in children’s mental health). However, there are several different types of treatment and therapy that can help.
    """

    let a18 =
     """
     Mental health conditions are often treated with medication, therapy or a combination of the two. However, there are many different types of treatment available, including Complementary & Alternative Treatments, self-help plans, and peer support. Treatments are very personal and should be discussed by the person with the mental health conditions and his or her team.
    """

    let a19 =
     """
     There are many types of mental health professionals. Finding the right one for you may require some research.
    """

    let a20 =
     """
     Many people find peer support a helpful tool that can aid in their recovery. There are a variety of organizations that offer support groups for consumers, their family members and friends. Some support groups are peer-led, while others may be led by a mental health professional.
    """

    let a21 =
     """
     If you or someone you know is in crisis, inpatient care can help. Inpatient care can help people stabilize on new medications, adjust to new symptoms, or get the help they need.
    """

    let a22 =
     """
     There are likely plenty of resources that can be used to help you find mental health treatment in your community. These resources can help you find the right therapist, and enable you to better understand viable treatment options and the treatment process.
    """

    let a23 =
     """
     Sometimes, consumers of mental health services may consider participating in a research study when they have not experienced improvement despite having tried a variety of medications and treatments. Research studies (also known as clinical trials) may involve the use of new medications or new treatment approaches whose safety and effectiveness is being tested. While we support innovation in the field, consumers should be cautioned that there are risks associated with clinical trials – make sure you’re aware of them before you enroll.
    """

    let a24 =
     """
     Similar to a medical advance directive or a health care power of attorney, a psychiatric advance directive is a legal document completed in a time of wellness that provides instructions regarding treatment or services one wishes to have or not have during a mental health crisis, and may help influence his or her care.
    """

    let a25 =
     """
     We all have mental health which is made up of our beliefs, thoughts, feelings and behaviours.
    """

    let a26 =
     """
     It can be difficult to find the things that will help you, as different things help different people. It's important to be open to a range of approaches and to be committed to finding the right help and to continue to be hopeful, even when some things don't work out.
    """

    let a27 =
     """
     We can all suffer from mental health challenges, but developing our wellbeing, resilience, and seeking help early can help prevent challenges becoming serious.
    """

    let a28 =
     """
     It is often more realistic and helpful to find out what helps with the issues you face. Talking, counselling, medication, friendships, exercise, good sleep and nutrition, and meaningful occupation can all help.
    """

    let a29 =
     """
     Challenges or problems with your mental health can arise from psychological, biological, and social, issues, as well as life events.
    """

    let a30 =
     """
     The most important thing is to talk to someone you trust. This might be a friend, colleague, family member, or GP. In addition to talking to someone, it may be useful to find out more information about what you are experiencing. These things may help to get some perspective on what you are experiencing, and be the start of getting help.
    """

    let a31 =
     """
     If your beliefs , thoughts , feelings or behaviours have a significant impact on your ability to function in what might be considered a normal or ordinary way, it would be important to seek help.
    """

    let a32 =
     """
     This may depend on your relationship with them. Gently encouraging someone to seek appropriate support would be helpful to start with.
    """

    let a33 =
     """
     Some people may advise you on good evidence of what works with the best of intentions, but it's important to find out what works best for you.
    """

    let a34 =
     """
     It may be tempting to try to block out the world altogether to avoid bad news, but it's important to keep yourself informed. We all have to step up during a pandemic because we all have a part to play in reducing the spread of the virus. It's important that you know what must be done and how you should do it. This is important for the health of your neighbours and your own mental health, and taking action can help counter difficult feelings like hopelessness and despair.
     One study from people in China found that people who had reliable up-to-date information about the coronavirus and COVID-19 illness and accurate instructions on how they should act (such as instructions around hand-washing and wearing a mask) felt more resilient and felt better able to handle the virus. People who received good, accurate information reported lower levels of stress, anxiety, and depression. This research is available for free at www.mdpi.com/1660-4601/17/5/1729.
     Of course, it's okay to set limits. Staying informed does not mean that you have to follow the news all day. Check in a few times a day, sticking to trusted sources and media outlets. While social media can be a great way to keep in touch with family and friends, social media can also amplify bad advice, vague or untrue stories, and other unhelpful information. Be sure to use good critical thinking skills.
    """

    let a35 =
     """
     Anyone can post anything online. It's up to the readers to think critically about information to decide if it seems helpful, truthful, or safe. Here are key points to keep in mind as you determine which information is worth considering and which information doesn't pass the test.
     It's so easy to spread information online, and we can't assume that the source we're reading or watching is the original source. Before you can evaluate anything, you need to know where the claims come from and determine if it's a reliable source.
     Reliable sources on the coronavirus and COVID-19 illness include the World Health Organization (WHO), Government of Canada ministries and agencies like Health Canada and the Public Health Agency of Canada, the Government of BC ministries and agencies like the BC Ministry of Health, and the BC Centre for Disease Control (BCCDC). Scientists and researchers at universities and other institutions and health sciences professionals are also important sources of information.
     Headlines and titles need to be simple and short, so they can sometimes be misleading on their own. They may also be purposefully shocking or controversial to entice you to click to read more.
     Websites that belong to governments, government-funded agencies, well-known health providers, universities, or groups of medical professionals are generally the most reliable. Be careful of sites that don't list the author or don't tell you much about themselves. Double-check the author and the credentials of any 'experts' quoted or cited to see if they are actually experts in the topic being discussed.
     Can you find other evidence from other sources to support the claims? Does the author list their sources? Are the sources legitimate, like research journals?
     Unhelpful sources want you to feel a certain way: scared, angry, distrustful, vulnerable. Phrases like "Skyrocketing rates of infection" are sensational and they're meant to make people feel afraid. On the other hand, factual statements like "We have 50 new cases in BC" give you important information without playing into your emotions. Helpful news or information sources want you feel informed and empowered.
     Who is paying for the site? What products or services are being advertised? What links or other sites do they promote? Are you learning something from a story or experience, or are you simply being directed to buy a product or service?
     Social media can be a great way to keep in touch with family and friends, especially as we practice physical distancing or self-isolation. Social media can also be an important way to learn from health experts and connect to support services and mutual aid groups in your community.
     Like any other source of information, it's important to use good critical thinking skills when you use social media. Studies find that searching for health information on social media generally has very mixed results. You'll see both very poor-quality sources next to good-quality sources, and it's up to you to decide which is which. In addition, social media posts tend to be short and rarely capture everything you need to consider. They are generally useful as a way to start learning or exploring different points of view rather than a place to gather all the information.
     Visit www.mediasmarts.ca to learn more about digital and media literacy
     Visit www.healthnewsreview.org to learn more about thinking critically around health claims (this resource is no longer updated daily, but all toolkits and lessons are still available)
     This page is adapted from the Evaluating Mental Health and Substance Use Information info sheet.
    """

    let a36 =
     """
     There are a lot of things you can't control. You can't control what happens next, how governments respond, or how your neighbours react to the pandemic. What you can do is make a plan and decide how you'll manage the things you do control, like your ability to stay safe, follow public health measures, stay connected with loved ones, and take care of your mental and physical health.
     Events like a pandemic change a lot over time, and that uncertainty can add to fear and stress. The truth is that we don't know what will happen next—but that doesn't mean we're all helpless. You can do a lot. You can:
     Map out a daily schedule, including times you can connect with loved ones online or by phone
     Plan out daily tasks and goals
     Give yourself a schedule to look up current information
     Make sure you have 14 days of healthy food and household supplies at home
     Keep medications on hand and talk to your doctor for advice if you're at increased risk
     Educate yourself on public health measures and figure out how you'll follow those instructions
     Figure out how you'll manage increased childcare demands, working for home, or other changes to your usual routine
     Determine if you'll need financial supports like the Canada Emergency Response Benefit or BC Temporary Rent Supplement if your job is affected by COVID-19. If you anticipate a need, you can find application instructions and gather any documents or other pieces of information ahead of time
     Figure out how you'll manage times when you feel overwhelmed or hopeless, like calming activities, the number for a local support or crisis line, a video chat with a loved one, or a way to connect with your mental health care provider
     Look for local support organizations, neighbourhood groups, or mutual aid groups if you need extra help or support or would like to help others in your community
     Some planning will be straightforward, but you may also encounter situations or times when it's harder to see a solution or good plan of action. This is a great time to practice problem-solving skills. Problem-solving is a method that helps you break down a complicated situation into manageable pieces, look for realistic and unbiased information, brainstorm possible solutions, and test the solutions that you think might work well. Problem-solving is a helpful skill no matter what else is going on in the world, and it's an empowering, methodical approach when you might otherwise feel overwhelmed or lost.
     Check out the following resources for more information about problem-solving:
     Wellness Module 4: Problem-Solving: www.heretohelp.bc.ca/wellness-module/wellness-module-4-problem-solving
     Problem-solving worksheet from Anxiety Canada: www.anxietycanada.com/sites/default/files/ProblemSolving.pdf
     Effective Problem-Solving in The Antidepressant Skills Workbook: psychhealthandsafety.org/asw
    """

    let a37 =
     """
     A lot of people are alone right now, but we don't have to be lonely. We're all in this together.
     While you may be physically separated from friends, family members, and other loved ones, it has never been more important to maintain those social connections. Social connections are an opportunity to seek and share support, talk through difficult feelings, share a laugh, keep up-to-date with loved ones, and help each other cope. This pandemic is a lot for one person to deal with on their own. While measures like physical distancing and self-isolation are necessary to slow the spread of the virus, the physical separation can amplify a lot of challenging emotions like loneliness and fear.
     Think about the different ways to connect that are most meaningful for you. For example, you might prefer a video chat over a phone call, or you might prefer to text throughout the day rather than one set time for a video call. Then, work with your social networks to make a plan. You might video chat with your close friends in the evening and phone a family member once a week.
     Remember to be mindful of people who may not be online. Check in by phone and ask how you can help.
     The quality of your social connections matter. Mindlessly scrolling through social media and liking a few posts usually doesn't build strong social connections. Make sure you focus on strategies that actually make you feel included and connected. If your current strategies don't help you feel connected, problem-solve to see if you can find a solution.
     Everyone feels lonely at times—maybe you recently moved to a new city, are changing your circle of friends, lost someone important in your life, or lost your job and also lost important social connections with coworkers. Other people may have physical connections to others but may feel like their emotional or social needs aren't met. Measures like social distancing or self-isolation can make loneliness feel worse no matter why you feel lonely now.
     Reach out to the connections you do have. Suggest ways to keep in touch and see if you can set a regular time to connect. People may hesitate to reach out for a lot of different reasons, so don't be afraid to be the one who asks.
     Look for local community support groups and mutual aid groups on social media. This pandemic is bringing everyone together, so look for opportunities to make new connections. These groups are a great way to share your skills and abilities or seek help and support.
     Look for specialized support groups. Support groups are moving online, and there are a lot of different support lines to call if you need to talk to someone. To find community services in BC, call or text 211 or visit www.bc211.ca.
     If you need extra support, you can talk with a psychologist or counsellor for free:
     You can access a free phone call with a Registered Psychologist though the Covid-19 Psychological Support Service from the BC Psychological Association. Visit www.psychologists.bc.ca/covid-19-resources.
     You can access free, phone-based, short-term support with a counsellor from a new group called the BC COVID-19 Mental Health Network. Email bccovidtherapists@gmail.com to receive an appointment time.
     For youth people ages 12-24, you can talk with a counsellor for free through Foundry Virtual. Visit foundrybc.ca/get-support/virtual/.
     Call the BC Mental Health Support Line at 310-6789. It’s available 24/7.
     Chat online with a Crisis Center volunteer at www.crisiscentrechat.ca (daily between noon and 1:00am)
     For older adults: Call the Seniors Distress Line at 604-872-123
     For youth and young adults: Chat online with a volunteer at www.YouthinBC.com (daily between noon and 1:00am)
     For children and youth: Call the Kids Help Phone at 1-800-668-6868 or visit kidshelpphone.ca
     For tips on managing loneliness, check out the following resources:
     Coping with Loneliness from the Canadian Mental Health Association: cmha.bc.ca/documents/coping-with-loneliness/
     Loneliness and Social Connection issue of Visions Journal at www.heretohelp.bc.ca/visions/loneliness-and-social-connection-vol14
     Wellness Module 3: Social Support at www.heretohelp.bc.ca/wellness-module/wellness-module-3-social-support
    """

    let a38 =
     """
     Taking care of your physical health is also good for your mental health. It's more important than ever to keep yourself healthy.
     Try to eat as well as you can. It may be easier to reach for unhealthier comfort foods and snacks while you spend more time at home, but try to keep a balanced approach. When you stock up on groceries, don’t ignore fresh fruit and vegetables—we still have everything we need to prepare food. Now that we're advised to limit the amount of time we spend in public spaces like grocery stores, this is a great time to try out new fruits and vegetables that keep at home for longer periods of time.
     If it's safer for you to stay home or you are in self-isolation, reach out for help. Many grocery stores and meal prep services offer safe, no-contact delivery. You can also ask family or friends to bring you groceries, or look for local COVID-19 support groups on social media. It's safest if others leave food and other supplies outside of your door to avoid spreading the virus.
     Exercise is an important part of mental health and well-being, stress management, and health sleep. However, it's something that many people give up when they start to feel stressed or overwhelmed.
     If it's safe for you to do so, spend time outside. You should still avoid busy areas or groups and stay at least two metres away from others, but there is no reason to avoid walks, runs, or other safe outdoor activities. (Note that some municipalities, BC Parks, and Parks Canada have restricted some outdoor spaces to reduce crowds, so check the status of your local parks or trails and respect closures—they're just keeping everyone safe.)
     If you prefer to exercise indoors, you can also find many different exercises classes online. You can try yoga, follow a barre class, work on your cardio, pick up a new dumbbell routine, and keep up with Crossfit WODs from the comfort of your living room. Look for no-equipment exercise routines or classes if you don't already have equipment.
     Poor sleep can make even simple problems feel a lot worse than they really are. Poor sleep can affect your mood, your outlook, and your patience. Unfortunately, stress and anxiety can really take a toll on your sleep. If you're having a hard time sleeping, be proactive and practice healthy sleep habits. For more, check out Wellness Module 6: Getting a Good Night's Sleep at www.heretohelp.bc.ca/wellness-module/wellness-module-6-getting-a-good-nights-sleep.
     If you have other health problems like a chronic illness, check in with your doctor or health care team to see if you need to take any additional measures or precautions. Remember to plan ahead and do what you can to keep prescription or over-the-counter medications, medical supplies, supplements, or other health needs on hand.
    """

    let a39 =
     """
     Distraction is a very valid tool to help you cope when everything feels overwhelming or when you feel lonely or isolated.
     If you don't have a lot of energy or focus right now, try low-effort distractions like watching TV, browsing Youtube, listening to a podcast or audiobook, playing a game on your phone, reading an easy book or magazine, or working on a simple art project.
     If you have more energy and focus, give yourself a to-do list every day: you can clean and take care of projects around your home, work on hobbies, connect with family or friends, read a new book and catch up on your favourite TV shows. You can find interesting opportunities to take online courses from universities all over the world through MOOCs and other online learning platforms, you can learn a new language online or through apps, and you can learn new hobbies and activities. As more people have to practice social distancing or self-isolation, people are finding creative ways to bring the world into their homes: you can tour museums and art galleries, Skype with a scientist, watch animals at zoos and nature preserves, and more.
     When normal schedules are disrupted, it's easy to fall into unhelpful habits. Look for ways to keep yourself on track with healthier habits. You could set yourself goals every day or turn activities into a fun competition with friends or family—whoever takes the most language classes wins!
     Many communities are using social media platforms like Facebook to organize support and help for neighbours. If you are healthy and it's safe to do so, you can sign up to walk dogs, pick up groceries and household supplies, and help others who can't go out at the moment. This can be a great way to make new connections in your area, and helping others is good for your own mental health. Just be sure to follow good hygiene practices and physical distancing—your own health is important.
    """

    let a40 =
     """
     How you think about something impacts your feelings and your behaviours.
     When we feel stressed out, angry, or fearful, it's hard to look at the situation realistically and see all of the options we have. (Remember: we all control our own actions and reactions, no matter what's going on in the world. We can call do something about this pandemic.)
     People often overestimate the negative parts—their own feelings, their own abilities to manage a difficult situation, or the situation itself—and underestimate positive parts—their own abilities to care for themselves and loved ones, their support networks, and opportunities.
     How does the thought "We're never going to make it through this!" make you feel? It likely doesn't feel good—and it isn't even true.
     Challenging negative, unhelpful thoughts can improve your mood, validate your ability to get through this, and help you see new options or opportunities to stay well.
     Stop and notice thoughts that come up. How do they make you feel? Do your thoughts seem realistic if you look at the situation more objectively? How can you reframe the thought to make it more productive or hopeful? Can you find any positive aspects or think of new ways to approach the situation?
     Here are a few example:
     "I'm so mad that my event was cancelled! This sucks!"
     "I know this is the safer option for everyone. When it's rescheduled, I'll enjoy it more because I won't have to worry about getting sick or spreading the illness."
     "I hate spending so much time at home. This is so boring."
     "I'm doing my part to keep my neighbours safe. It's worth it because it keeps people healthy."
     "I'm having a hard time getting used to my new schedule. This is so frustrating."
     "I'll get used to this soon, just like I adapted the last time I had to change my schedule. Now that I'm home more, I'll have more time to finish the projects I haven't touched in months and I'm excited to see the end results.
     "I'm really scared and I don't know what to do. I feel so overwhelmed right now."
     "It makes sense that I feel scared—people are getting sick and we don't know when things will go back to normal. But there are a lot of things I can do to keep healthy, and I'm going to do some research so I can do my best. When I focus on the things I can do, everything feels more manageable."
     "We're going to be stuck inside forever. I'm already sick of this."
     "I understand that it will take some time to manage COVID-19, and I trust that health care professionals and scientists are working as fast as they can. I know this will end eventually and life will go back to normal."
     The goal is not to ignore the bad or uncomfortable parts of the situation or deny that there's a problem. Instead, this exercise can help you understand the situation more realistically and see the parts that you can control right now.
    """

    let a41 =
     """
     What you tell yourself about a situation affects how you feel and what you do. Sometimes your interpretation of a situation can get distorted and you only focus on the negative aspects—this is normal and expected. However, when you interpret situations too negatively, you might feel worse. You're also more likely to respond to the situation in ways that are unhelpful in the long term.
     These automatic thoughts and assumptions are sometimes called thinking traps. Everyone falls into unbalanced thinking traps from time to time. You're most likely to distort your interpretation of things when you already feel sad, angry, anxious, depressed or stressed. You're also more vulnerable to thinking traps when you're not taking good care of yourself, like when you're not eating or sleeping well.
     Here are some common thinking traps:
     Thinking that a negative situation is part of a constant cycle of bad things that happen. People who overgeneralize often use words like "always" or "never."
     I was really looking forward to that concert, and now it’s cancelled. This always happens to me! I never get to do fun things!
     Seeing things as only right or wrong, good or bad, perfect or terrible. People who think in black and white terms see a small mistake as a total failure.
     I wanted to eat healthier, but I ate too many snacks today. This plan is a total failure!
     Saying only negative things about yourself or other people.
     I made a mistake. I'm stupid! My boss told me that I made a mistake. My boss is a total jerk!
     Predicting that something bad will happen without any evidence.
     I've been doing what I can to stay home and reduce the risks, but I just know that I'm going to get sick.
     Focusing only on the negative parts of a situation and ignoring anything good or positive.
     I know there's a lot I can do at home, but I'm just so sick of this. Everything is terrible.
     Believing that bad feelings or emotions reflect the situation.
     I feel scared and overwhelmed right now, so that must mean everything is very bad and will never get better.
     Telling yourself how you "should" or "must" act.
     I should be able to handle this without getting upset and crying!
     Here are helpful strategies to challenge common thinking traps. Many people find their mood and confidence improve after working through these skills. You can also find worksheets to help you go through each step at www.heretohelp.bc.ca.
     Don't try to get out of a thinking trap by just telling yourself to stop thinking that way.
     This doesn't let you look at the evidence and challenge the thinking trap. When you try and push upsetting thoughts away, they are more likely to keep popping back into your mind.
     Ask yourself the following questions when something upsetting happens:
     What is the situation? What actually happened? Only include facts that everyone would agree on.
     What are your thoughts? What are you telling yourself?
     What are your emotions? How do you feel?
     What are your behaviours? How are you reacting? What are you doing to cope?
     Take a look at the thoughts you've listed. Are you using any of the thinking traps and falling into distorted thinking patterns? It's common to fall into more than one thinking trap. Go back to the thinking trap list and identify which ones apply to you and your current situation.
     The best way to break a thinking trap is to look at your thoughts like a scientist and consider the hard facts. Use the evidence you've collected to challenge your thinking traps. Here are some ways to do that:
     Try to find evidence against the thought. If you make a mistake at work, you might automatically think, "I can't do anything right! I must be a terrible employee!" When this thought comes up, you might challenge it by asking, "Is there any evidence to support this thought? Is there any evidence to disprove this thought?" You might quickly realize that your boss has complimented your work recently, which doesn't support the idea that you're a bad employee.
     Ask yourself, "Would I judge other people if they did the same thing? Am I being harder on myself than I am on other people?" This is a great method for challenging thinking traps that involve harsh self-criticism.
     Find out whether other people you trust agree with your thoughts. For example, you might have trouble with one of your kids and think, "Good parents wouldn't have this kind of problem." To challenge this thought, you can ask other parents if they've ever had any problems with their kids.
     Test your beliefs in person. For example, if you think that your friends don't care about you, call a few friends and make plans to start a regular video call. If you assumed that they will all say no, you may be pleasantly surprised to hear that they do want to see you.
     Once you have worked through some challenges, try to think of a more balanced thought to replace the old thinking traps. Let's use the following example:
     I feel sad and overwhelmed. I'm having a hard time figuring out what to do.
     I'm the worst! I should be able to handle this!
     Labeling
     'Should' statements
     Examine the evidence: I have a lot of challenges right now. I'm worried about my family and everything seems to change so quickly. I've successfully handled complicated situations in the past, so I know I can do this.
     It's okay to feel upset right now—there's a lot going on. I'm going to think about how I got through past situations and see what worked for me. I'm trying to do a lot on my own, so I'm going to talk to my family so we can make a plan and work together.
     Try the Healthy Thinking Worksheet at www.heretohelp.bc.ca
     Check out Anxiety Canada's articles Helpful Thinking and Thinking Traps
     This page is adapted from Wellness Module 8: Healthy Thinking at www.heretohelp.bc.ca/wellness-module/wellness-module-8-healthy-thinking.
    """

    let a42 =
     """
     While a lot of people think of grief in terms of losing a person or pet, grief can come up whenever you lose something important. This includes:
     Losing security, like losing your job or wondering how long you'll be able to pay rent
     Losing stability or routine, like finding yourself working from home or navigating childcare closures
     Losing your sense of safety, like fearing you or someone you love might end up with COVID-19
     Losing your social relationships, like missing time with family and friends now that everyone must practice physical distancing or self-isolation
     Losing hope for the future, like feeling that life will never go back to normal
     Losing important goals, like finding your classes, sports competitions, or performances are cancelled for the foreseeable future
     Losing important milestone celebrations like graduation ceremonies and weddings
     Grief bring up complicated feelings. You might feel sad, angry, frustrated, fearful, or hopeless. You may have a hard time eating or sleeping, or feel very tense. You may feel overwhelmed and tired. You may wonder if life will ever feel normal again.
     Everyone grieves in their own way and their own time. Here are some strategies to try as you navigate your own journey.
     Acknowledge and express your feelings in a healthy way. Give your feelings a name and find healthy ways to express them, such as by talking with a friend, writing in a journal, or making art.
     Give yourself as much time as you need. Grief follows its own schedule. Give yourself permission to use this time to take care of your well-being. Let go of expectations, tasks, or other obligations that can wait.
     Seek support. Grief can feel very isolating, even though a lot of people are experiencing some sort of loss right now. Reach out to friends or family and share your feelings. Look for ways to help and support each other.
     Take care of yourself. Ignoring health and well-being can make difficult experiences feel worse. Eat as well as you can, try to get enough sleep, spend time outside if it's safe for you to do so, and exercise regularly. Think about self-care activities or strategies that have helped you cope with challenging situations in the past and make time for those activities.
     Know that feelings of grief will pass. Grief may feel intense at times, but those feelings will become more manageable over time and will eventually pass.
     Connect with a mental health professional if you're having a hard time. If you're having a hard time getting through the day, coping in unhealthy ways, or having a hard time managing difficult thoughts or feelings, it's a good idea to seek help from a professional like a psychologist or counsellor—many now offer online or phone appointments. To find help:
     For everyone
     BC Psychological Association: Find a Registered Psychologist at www.psychologists.bc.ca/find_psychologist
     BC Association of Clinical Counsellors: Find a Registered Clinical Counsellor at bc-counsellors.org
     BC Mental Health Support Line: call 310-6789 (no area code) for to learn about services in your area or just to talk with someone right now
     For young people
     Kids Help Phone: Talk to a counsellor at 1-800-668-6868 or chat at kidshelpphone.ca (available 24/7)
     Foundry: Contact your local Foundry office at foundrybc.ca for Foundy Virtual and information about local resources (for youth ages 12-24)
     Youth in BC: Chat with a crisis line responder at youthinbc.com (available every day from noon – 1:00am)
     That Discomfort You're Feeling Is Grief in Harvard Business Review at hbr.org/2020/03/that-discomfort-youre-feeling-is-grief
     Grieving from the Canadian Mental Health Association at cmha.ca/documents/grieving
     Coping with Grief and Loss from Mind Your Mind at mindyourmind.ca/wellness/coping-grief-and-loss
    """

    let a43 =
     """
     To find a family doctor (general physician), visit the College of Physicians and Surgeons of BC to use their Find a Physician tool. You can also see a family doctor at a local walk-in clinic, though it’s helpful to find a regular doctor if you have ongoing care needs. You can also find a psychiatrist through the College of Physicians and Surgeons of BC. Be aware that you almost always need a doctor’s referral to see a psychiatrist.
     You can find a registered psychologist through the BC Psychological Association and the College of Psychologists of BC.
     To find a clinical counsellor, visit the BC Association of Clinical Counsellors.
     For more on the differences between these service providers, see the article The Right Path for You: Finding your way to and through services in BC from the Finding the Right Help – Navigating the System issue of Visions Journal.
    """

    let a44 =
     """
     A psychiatrist is a specialist doctor. In BC, you need to ask your doctor for a referral. If you don't see a regular family doctor, you can ask any doctor at a walk-in clinic for a referral.
     In some cases, you may be able to "self-refer" or make an appointment with a mental health program yourself, but that may not get you access to a psychiatrist. Contact your local mental health centre to see what's available in your area. You can search for mental health centres at www.gov.bc.ca/mentalhealth. If you need help finding your local mental health centre, call HealthlinkBC at 811 or visit www.healthlinkbc.ca and use the Find Health Service tool.
    """

    let a45 =
     """
     To find a Registered Psychologist, visit the BC Psychological Association. You can make an appointment on your own. You don’t need a doctor’s referral to see a psychologist.
     Registered Psychologists are not usually covered by MSP, so you’ll have to pay for the cost of the appointment yourself. Workplace extended health benefits or Employee (Family) Assistance Programs may cover some costs. Some psychologists offer a sliding scale based on your income. If you’re facing financial hardship, you can ask when you make the appointment.
     If you want to learn more about lower-cost options to access counselling (though not usually by Registered Psychologists), email us with your location and our information and referrals team can see what options there may be in your community.
     If you see a Registered Psychologist through a public mental health centre like a mental health team or outpatient psychiatry program, it will still be covered by MSP. Talk to your care provider if you have questions or want to learn more.
    """

    let a46 =
     """
     You can find directories of counsellors through their professional organizations.
     Registered Clinical Counsellors: visit the BC Association of Clinical Counsellors
     Canadian Certified Counsellors: visit the Canadian Counselling and Psychotherapy Association
     Canadian Professional Counsellors: visit the Canadian Professional Counsellors Association
     For more specialized counselling professionals, such as Marriage and Family Therapists, see the Federation of Associations for Counselling Therapists in British Columbia.
     You can make an appointment on your own. You don’t need a doctor’s referral to see a counsellor.
     Counsellors are not usually covered by MSP, so you’ll have to pay for the cost of the appointment yourself. Workplace extended health benefits, Employee (Family) Assistance Programs, or private health insurance plans may help cover some costs. Some counsellors may offer a sliding scale based on your income. If you’re facing financial hardship, you can ask when you make the appointment.
     Learn more about lower-cost options to access counselling or email us with your location and our information and referrals team can see what options there may be in your community.
     If you see a counsellor through a public mental health centre like a mental health team or outpatient psychiatry program, it will still be covered by MSP. Talk to your care provider if you have questions or want to learn more.
     Indigenous community members can access some counselling services locally or through the First Nations Health Authority. Contact your local Band or local Friendship Centre, or contact the First Nations Health Authority.
    """

    let a47 =
     """
     Support groups are a way for people with a common experience to help each other and learn from each other. There are support groups for people with any experience of mental illness, support groups for people with a specific diagnosis, support groups for family members and friends, and more.
     Support groups are offered by community organizations, mental health service providers, schools, campuses, and support agencies. Here are some general resources to help you find a mental health or substance use related support group in BC:
     Talk to your mental health care provider. They might be able to make recommendations.
     The Mood Disorders Association of BC offers a network of peer support groups around the province for people who experience mental illnesses like mood disorders or post-traumatic stress disorder. They also have groups for family and friends. Groups are drop-in.
     Many Canadian Mental Health Association branches offer support services, including support groups. If your local branch doesn’t have their own program, they can recommend other services in your community.
     The BC Schizophrenia Society maintains a directory of support groups and other regular events for family members of people with a mental illness.
     For groups related to alcohol or drug use, call the Alcohol and Drug Information Referral Service at 1-800-663-1441 or 604-660-9382 in the Lower Mainland.
     For groups in the Lower Mainland, search the Red Book Online.
     If you are at school or on campus, talk to a school counsellor or your campus’ health and wellness office.
     For online support, see some suggestions at www.heretohelp.bc.ca/discuss. This can be particularly useful if you don’t have a group in your community or have trouble getting to an in-person group.
     In order to benefit the most from a support group, you need to feel safe enough to share your experiences and thoughts, and you need to feel comfortable supporting others. It can be helpful to contact the group facilitator or organizer ahead of time to see if a particular group might be a good fit for you. We have a checklist to help you evaluate support groups—including when it might be time to leave one.
     Sometimes a group just doesn’t work for you, and that’s okay. If you feel comfortable, you can try talking to the facilitator to see if they can recommend another group that you can try.
    """

    let a48 =
     """
     To find help for a child or youth, you can:
     Encourage your child to talk to a teacher or school counsellor
     Talk to your family doctor or pediatrician, or go to a walk-in clinic
     Contact your local Child & Youth Mental Health office on one of their walk-in days
     Use Kelty Mental Health’s Help Finder Tool to find specific services and providers
     Contact the Institute of Families for Child and Youth Mental Health’s Youth-in-Residence or Parent-in-Residence for guidance, information, and support. Youth-in-Residence and Parents-in-Residence are located around the province. If you don’t have one in your community, a Parent- or Youth-in-Residence at the Kelty Mental Health Resource Centre can help you by phone or email
     Visit www.familysmart.ca for information and resources on child and youth mental health
     For young people ages 12-24, visit foundrybc.ca to see if there is a Foundry Centre in your area. Foundry offers easy-to-access mental health care, physical health care, social services, and support out of one office.
    """

    let a49 =
     """
     Mental health concerns are a serious concern at any age, and everyone deserves help and support. If you’re concerned about your mental health, you can:
     Talk to your family doctor or go to a walk-in clinic
     Call the Mental Health Support Line at 310-6789 (no area code) for information about services in your area
     Find your local mental health centre or program at www.gov.bc.ca/mentalhealth (you may need a doctor’s referral to access some programs)
     Find your local Canadian Mental Health Association branch at www.cmha.bc.ca and ask for information about local services
     Contact a local senior’s support organization or group and ask for advice. You can search for organizations at www.bc211.ca
     For general information about senior’s mental health:
     Find resources from the Canadian Coalition for Seniors' Mental Health at www.ccsmh.ca
     Find info sheets in the Seniors and Depression Series at www.heretohelp.bc.ca/factsheet/seniors-and-depression-series
     If you are concerned about a loved one:
     Be honest about your concerns, like changes you’ve noticed or problems that have come up
     Give your loved one a chance to talk about their perspectives. They may have a different take on the problem or have different priorities in their health care
     Be patient—it will probably take more than one conversation
     Whenever possible, aim for cooperation. Focus on finding an action or solution that everyone can agree on
     Remember that asking for help is hard for many of us, and it can be even harder as people’s roles and abilities change. If your loved one isn’t willing to talk about their experiences with you right away, offer alternatives like the BC Mental Health Support Line (310-6789—no area code needed), the Seniors Distress Line (604-872-1234) or a local seniors support organization (search for organizations at www.bc211.ca)
     Seek support to manage your expectations and your own well-being. It can be very stressful to see a loved one experience health problems. But adults who can care for themselves and aren’t at risk of harm are free to make their own choices—and that includes refusing help
    """

    let a50 =
     """
     Self-help resources are not a substitute for diagnosis or treatment. If you have concerns about low mood, it’s best to talk to your doctor first and rule out physical causes for your symptoms. However, once you’ve checked in with your doctor, self-help materials can be a great way to learn more about depression and practice different skills at your own pace or in between treatment sessions. Here are some resources to check out.
     The Antidepressant Skills Workbook was created by two BC psychologists. You’ll learn more about depression, learn and practice different skills to help improve your mood, and learn how healthy changes in other parts of your life can impact your mood. They also have similar workbooks for specific groups:
     Dealing With Depression: Antidepressant Skills for Teens
     A workbook for people who experience problems with depression at work called Antidepressant Skills at Work: Dealing with Mood Problems in the Workplace
     A workbook for expecting or new moms called Managing Depression: A Self-help Skills Resource for Women Living With Depression During Pregnancy, After Delivery and Beyond
     A workbook for people who experience health problems called Positive Coping with Health Conditions: A Self-Care Workbook
     On the HeretoHelp site, our Managing Depression series offers three info sheets: Dealing with a Diagnosis of Depression, Working With Your Doctor for Depression, and Preventing Relapse of Depression. The series helps you be an active partner in your health care, build healthy coping skills and self-management strategies, and more.
     Often depression can affect your concentration and motivation to work through self-help materials on your own. If you’d like self-help materials with a bit of extra support from a person, Bounce Back: Reclaim Your Health is a guided self-help program for British Columbians who experience mild to moderate depression, low mood, stress, or anxiety. You can get a DVD of tips to help you recognize and manage symptoms of depression, or you can learn more in-depth skills in a series of workbooks you complete at home. You also work with a trained coach from the Canadian Mental Health Association who will offer support and advice by telephone or video conference. Bounce Back is free with a doctor’s referral. For more information, visit www.bouncebackbc.ca (If you want to access the Bounce Back materials without a coach or referral, you can do that online in BC at www.bouncebackonline.ca).
     The Mood Disorders Association of BC has a number of videos on mental health, seeking help, and other topics
     Kelty Mental Health Resource Centre also maintains a comprehensive list of websites, toolkits, books and other resources for young people and families
     Heads Up Guys offer tips and strategies for healthy living strategies for men who experience depression
     The BC Reproductive Mental Health Program of BC Mental Health and Substance Use Services has a self-management guide for women who experience postpartum depression called Coping with Depression in Pregnancy and Following the Birth. They also have a guide for Aboriginal women and their families called Celebrating the Circle of Life: coming back to Balance and Harmony
     The follow resources are based outside of BC, but they offer a lot of good information.
     MoodGYM Training Program is a web-based self-help course for people who experience depression. It is based in Australia but is available for free to anyone
     Moodjuice is a UK initiative that offers self-help workbooks, including one for depression
     There are many books and workbooks available to help people who experience depression. Talk to your mental health care team for recommendations. You can find many from your local bookstore or special bookstores specializing in mental health like Odin Books in Vancouver (you can also order online). Within British Columbia, you may also borrow books for free from the Family Support and Resource Centre at BC Children’s and Women’s Hospitals. They have many self-help and reference materials on depression for women and their partners, for parents, and for children and youth.
    """

    let a51 =
     """
     Self-help resources are not a substitute for diagnosis or treatment. If you have concerns about low mood, it’s best to talk to your doctor first and rule out physical causes for your symptoms. However, once you’ve checked in with your doctor, self-help materials can be a great way to learn more about anxiety and practice different skills at your own pace or in between treatment sessions. Here are some resources to check out:
     Anxiety Canada has self-help resources, toolkits, worksheets, and videos on anxiety and anxiety disorders for children and their parents, teens, adults, expecting and new moms at www.anxietycanada.com. Their MindShift app teaches skills to help users manage anxiety, relax, and live well. Although designed for teens and young adults, other adults can also benefit from it.
     Kelty Mental Health Resource Centre has a list of recommended websites, toolkits, books, and other resources for children and for teens.
     The BC Reproductive Mental Health Program of BC Mental Health and Substance Use Services has a self-management guide for women who experience anxiety during and after birth called Coping With Anxiety During Pregnancy and Following the Birth.
     Moodjuice is a UK program that offers self-help and information on a number of mental health concerns, including their anxiety self-help guide. If you’d like help for a specific anxiety disorder, visit www.moodjuice.scot.nhs.uk to search for other guides.
     There are many books and workbooks available to help people who experience anxiety problems. Talk to your mental health. Talk to your mental health care team for recommendations. There are bookstores that specialize in mental health and well-being materials, such as Odin Books in Vancouver. Within British Columbia, you may also borrow books for free from the Family Support and Resource Centre at BC Children’s and Women’s Hospitals. They have many self-help and reference materials on depression for women and their partners, for parents, and for children and youth.
     If you’d like self-help materials with a bit of extra support from a person, Bounce Back: Reclaim Your Health is a guided self-help program for British Columbians who experience mild to moderate low mood or anxiety. You can get a DVD of tips to help you recognize and manage symptoms of anxiety, or you can learn more in-depth skills in a series of workbooks you complete at home. You work with a trained coach from the Canadian Mental Health Association who will offer support and advice by telephone or video conference. Bounce Back is free with a doctor’s referral. For more information, visit www.bouncebackbc.ca. If you want to access the Bounce Back materials without a coach or referral, you can do that online in BC at www.bouncebackonline.ca.
    """

    let a52 =
     """
     Physical health can have a big impact on mental health! Here are some resources to help you cope with the emotional challenges of living with a chronic health problem:
     Self-Management BC offers free programs for adults of all ages who are experiencing any ongoing physical or mental health issues. Find information and strategies to help manage symptoms and take action toward the best life possible. Family members, friends, and loved ones are welcome to attend. Programs are available in languages other than English, including Chinese and Punjabi. On their website, you learn more about self-management research and find a workshop or telephone-based support program. Visit www.selfmanagementbc.ca or call toll-free 1-866-902-3767.
     A group of BC psychologists and doctors have created a self-guided workbook called Positive Coping with Health Conditions for anyone who is dealing with a health problem and anyone who supports a loved one that experiences a health problem. The workbook discusses the links between physical health and mental health, and teaches you different skills to help you manage problems and difficult feelings well, get active, and work on healthy relationships.
     Bounce Back: Reclaim Your Health is a guided self-help program for British Columbians who experience mild to moderate depression, low mood or anxiety. You can get a DVD of tips to help you recognize and manage symptoms of depression, or you can learn more in-depth skills in a series of workbook you complete at home. One of the workbooks, Reclaim Your Health, is focused on living with chronic health conditions. You work with a trained coach from the Canadian Mental Health Association who will offer support and advice by telephone or video conference. Bounce Back is free with a doctor’s referral. For more information, visit www.bouncebackbc.ca. If you want to access the Bounce Back materials without a coach or referral, you can do that online in BC at www.bouncebackonline.ca.
     Reclaim Your Life: From illness, disability, pain, or fatigue is a booklet from the Canadian Mental Health Association that offers practical tips and strategies to help you cope with a problem and get back to your usual routine. The booklet is available for purchase at www.livinglifetothefull.ca. It is part of a program called Living Life to the Full, an eight-week program that helps people make helpful changes in their lives. It’s offered throughout the province, and you can find course listings on the website as well.
     Many organizations support people who experience a particular illness or health problem. These organizations can often help people find appropriate support services or may even offer support groups of their own. You can also ask your health care team for recommendations. If you can’t find support in person, you can see if there are any support groups online.
     If you’re having a hard time coping and feel that you need one-on-one support, a therapist or counsellor can be a great option. You can find more information on finding these professionals at www.heretohelp.bc.ca/ask-us/how-can-i-find-a-doctor-psychiatrist-psychologist-or-counsellor.
    """

    let a53 =
     """
     Each person has a different relationship with substances like alcohol and other drugs, and people use substances for different reasons. What’s beneficial for some may cause problems for others, or for the same person in different situations.
     To learn more about substance use, check out Understanding Substance Use: A health promotion perspective. For more on supporting someone else, a useful resource is Helping People who Use Substances: A health promotion perspective.
     To help you think about your relationship with substance, You and Substance Use: Stuff to think about...and ways to make changes is a great workbook. Another series, Making Healthier Choices about Substance Use: Tips for cutting back or quitting, has a lot of useful tips and resources if you want to change the way you use alcohol, marijuana, medications, methamphetamine, and tobacco.
     If you or someone you care about needs more help, contact the Alcohol and Drug Information Referral Service to find support in your area. To get help anywhere in BC, call 1-800-663-1441. In Greater Vancouver, call 604-660-9382.
     To learn more about substance use, visit the Centre for Addictions Research of BC.
    """

    let a54 =
     """
     Mental health services like counselling or therapy may be covered by your BC Medical Services Plan (MSP) when you access the service through a hospital or mental health clinic. Find your local health authority to learn more about counselling services in your area. HealthLink BC’s Find Services tool and Locator app can also help you find services. You often need a doctor’s referral to access these types of programs.
     Without a doctor’s referral, you need to access care through the private system, which is not funded by the government. Private mental health services can be expensive. This can be a real barrier to finding good care. While there is no simple answer, there are several different places you can look:
     If you have health benefits at work, ask about your coverage. Some plans will cover a certain number of private counselling or therapy sessions. In addition, a workplace Employee/Family Assistance Plan may offer some services or may refer you to community services.
     Some psychologists, clinical counsellors, or other service providers may offer a sliding scale, which means that their costs are based on your income. Try contacting service providers directly to ask if they offer a sliding scale. One private clinic in Vancouver has a good list of lower-cost counselling options in the Vancouver area. For those outside of the Lower Mainland, you can still look at this list and see if any similar organizations might be in your community.
     Contact a mental health organization like Anxiety Canada, the Canadian Mental Health Association, BC Schizophrenia Society, Institute of Families for Child and Youth Mental Health, Mood Disorders Association of BC, or Jessie’s Legacy. They may offer services in your area, or they may have local connections that they can refer you to.
     You can also email us and we’ll try and give you some recommendations for your community.
    """

    let a55 =
     """
     BC PharmaCare covers the cost of some medications through Plan G, the Psychiatric Medications Plan, for people who need a medication to be well but cannot afford them. Your doctor or nurse practitioner must apply for your coverage on your behalf. Coverage usually lasts for one year, and then you can reapply if needed. Talk to your care team if you’re interested in Plan G.
    """

    let a56 =
     """
     Mental health services provided through the government-run (‘public’) system, like services you receive through your local mental health centre or team, an outpatient psychiatry at a hospital are most often completely covered by MSP. As long as you are eligible for MSP, you won’t have to pay to see someone.
     For mental health services that aren’t covered by MSP, such as psychotherapy or counselling with a private practitioner, you will have to cover the costs yourself. It’s no secret that these services can be expensive, but you may be able to offset the costs through:
     Extended health coverage from your own or an immediate family member’s workplace benefits
     Employee (Family) Assistance Program from your own or an immediate family member’s workplace benefits
     For students, school or campus mental health services
     For Indigenous community members, services offered through your Band, Friendship Centre, Indigenous support organization, or the First Nations Health Authority
     Cultural or faith communities may offer some mental health services
     You may be able to claim some larger costs related to treatment of a mental health condition on your income tax return under health expenses
     Some providers offer lower-cost services or a sliding scale, usually based on your income. Email us with your location and our information and referrals team can help you look for options in your area.
     If costs are a barrier to health care, talk to your doctor to see if there are any services in the public health system (covered by MSP) that may be a good fit for you. You can also called the Mental Health Support Line at 310-6789 (no area code) for more information on local mental health services.
    """

    let a57 =
     """
     Provincial income assistance has three income levels: basic assistance (also called welfare), Persons with Disabilities benefits (PWD), and the Persons with Persistent and Multiple Barriers to employment benefits (PPMB). All are administered by the Ministry of Social Development and Social Inclusion. Depending on the situation, mental illness may considered under PWD or PPMB. Addictions may not be included in PPMB applications.
     PWD benefits are for people who have a disability that prevents them from working or going about their daily activities. Find information from the Ministry and read a fact sheet from the Disability Alliance of BC with information about the application process.
     PPMB benefits are for people who experience multiple barriers to work. Find information from the Ministry and read a fact sheet from the Disability Alliance of BC with information about the application process.
     The Disability Alliance of BC (formerly the BC Coalition of People with Disabilities) and help you navigate PWD and PPMB programs as well as Canada Pension Plan benefits. They have in-depth information on preparing your application, working through the application process, and handling appeals. PovNet can also connect you with an advocate to help you through the application process.
     For more on provincial PWD benefits and advocacy tips, see Getting By on Social Assistance: Navigating the ‘welfare’ system or read other articles in our Income issue of Visions Journal.
    """

    let a58 =
     """
     MSP stands for Medical Services Plan. It’s a health insurance program managed by the government for people who live in British Columbia, Canada. MSP pays for things like doctor’s appointments, appointments with specialist doctors like psychiatrists, and hospital stays you need to treat a medical problem.
     Everyone who lives in BC must enroll in MSP. You pay a monthly fee based on your income. Some workplaces cover the costs of MSP fees for you.
     Learn more about MSP here. If you have questions about applying for or managing your MSP coverage, call Health Insurance BC at 604 683-7151 in the Lower Mainland or 1-800-663-7100 in the rest of BC. They are open Monday – Friday from 8.00am – 4.30pm. You can also get help in person at your local Service BC office.
     If you are new to BC, you have to wait three months before registering for MSP.
     Bring your Care Card or BC Services Card with you when you go to medical appointments or use the pharmacy.
    """

    let a59 =
     """
     A referral means someone recommends you to another service. In health care, it usually means a request from your doctor to see a specialist like a psychiatrist.
     To access any specialist in BC, you first need a referral. You may need to meet certain criteria, like a specific diagnosis or specific symptoms, to access some specialists. Your doctor can tell you what to expect.
     Once your doctor has made the referral, the specialist’s office will contact you with an appointment time. Make sure your doctor’s office has your current contact information so the specialist can reach you.
     The process is the same whether you see the same family doctor or visit a walk-in clinic.
     Not all mental health programs in BC require a doctor’s referral. This is good news for people who are looking for help! A "self-referral" means that you ask to see someone, and then you will be evaluated to see if you meet the criteria to receive services. Contact your local health authority to learn more about programs in your area:
    """

    let a60 =
     """
     A psychiatrist is a medical doctor with extra training in mental health who can choose to prescribe medications. Some use psychotherapy (‘talk therapies’) approaches like cognitive-behavioural therapy to treat mental health problems. Many psychiatrists work at hospitals, clinics, or health centres, and some have a private office. As they are specialist doctors, you will almost always need another doctor’s referral to see a psychiatrist, and fees are covered by MSP. If you have a valid BC Services or CareCard, you do not need to pay to see a psychiatrist.
     A registered psychologist focuses on different talk therapy or counselling approaches to treatments, but they don’t prescribe medication. They have graduate degrees in psychology. There are two different ways to access registered psychologists: the public system and the private system. Registered psychologists in the public system work in some hospitals or schools. You may need a doctor’s referral to access the program, and costs are usually covered by MSP. However, most people need to access registered psychologists through the private system. To do this, you can contact the psychologist yourself—you do not need a referral. Costs are not covered by MSP, but they may be covered by employee health plans. A registered psychologist’s fees charged by hour vary, and some offer lower fees to people with lower incomes.
     You’ve probably noticed that a lot of the differences come down to how you pay for different services and how these professionals are educated. The practical differences in how they work are not always so clear. When it comes to your treatment and care, the most important part is finding a professional who supports your own goals. Are you really focused on fine-tuning medications? Are you looking for a particular therapy approach? Does the professional’s philosophy of care make sense to you? Do you like the professional you’re talking to and do you feel safe sharing your experiences? Ultimately, your relationship with the professional is what matters. Instead of focusing on designation, look for a professional who meets your needs and your expectations.
     Talk to your family doctor and ask for their recommendations
     Ask local mental health organizations for help. You can find local branches through the provincial organizations behind HeretoHelp
     Ask a community health centre, outpatient psychiatry program, or mental health team for suggestions
     For a list of psychiatrists near you, search under ‘Specialist’ in the College of Physicians and Surgeons of British Columbia’s Find a Physician Tool but remember that you will first need a referral from a doctor (like your family doctor)
     For a list of psychologists near you, search in the British Columbia Psychological Association’s Find a Registered Psychologist tool and you can also learn more about finding a psychologist from the College of Psychologists of British Columbia
    """

    let a61 =
     """
     Psychotherapy and counselling have a lot in common and usually mean the same thing. Both are used to describe professionals who use talk-based approaches to help someone recover from a mental illness or mental health problem. Many different professionals may provide counselling or psychotherapy, including registered psychologists, registered clinical counsellors, psychiatrists, other therapists and counsellors, family doctors, psychiatric nurses, and faith leaders.
     It’s useful to talk to someone about any problem—a lot of people find that simply talking with friends or family can help them feel better. A professional therapist or counsellor can offer more: they have training, experience, and emotional distance (since they don’t know you). They use different theories to listen to you, support you, and approach different problems or patterns. For example, a psychotherapy called cognitive-behavioural therapy is based on the theory that learning skills to change your thinking and actions can positively impact your emotions, well-being, and future thoughts and behaviours. A therapist could help you learn and practice these skills.
     There are many psychotherapies with good evidence of being effective for different problems or illnesses. A few examples include cognitive-behavioural therapy, interpersonal therapy, dialectical behaviour therapy, solutions-focused brief psychotherapy, narrative therapy, and emotion-focused therapy.
     In general, some aspects of therapy and counselling are the same, no matter which approach you choose: the expectations you bring to your counselling sessions, the match between your understanding of the problems and your therapist’s understanding of the problem, and the trust and rapport that you have with your therapist. In fact, one research review found that 50% of the improvement seen in clients who just received active listening and support from a counsellor (called non-directive supportive therapy) was due simply to the relationship between client and therapist.1 Psychotherapy can and does work, but the professional you choose, and their match with your values, is also very important.
     When you’re looking for a professional, it’s always a good idea to ask if they are a member of a professional organization (like those listed in the next section).
    """

    let a62 =
     """
     CBT (cognitive-behavioural therapy) and DBT (dialectical behaviour therapy) are two forms of psychotherapy or “talk therapy.” In both, you work with a mental health professional to learn more about the challenges you experience and learn skills to help you manage challenges on your own.
     Cognitive-behavioural therapy or CBT teaches you how your thoughts, feelings, and behaviours influence each other. For example, if you believe that people don’t like you (thought), you might avoid social situations (behaviour) and feel lonely (feeling). However, CBT teaches you how to use these relationships to your advantage: a positive change in one factor (changing a thought or behaviour) can lead to positive changes in all factors. CBT is an approach that has been proven by research to work for many different mental health problems, including depression, anxiety disorders, eating disorders and substance use problems.
     CBT is structured, short-term, goal-oriented and focused on the present. It starts with education around the particular mental illness or challenge and how the illness or challenge affects you. Next, you’ll learn and practice skills and strategies like problem-solving or realistic thinking to help you make changes in your thoughts, feelings, and behaviours. You’ll learn how you can use your new skills to deal with problems in the future.
     Dialectical behaviour therapy or DBT is based on CBT, with greater focus on emotional and social aspects. DBT was developed to help people cope with extreme or unstable emotions and harmful behaviours. DBT is an evidence-based approach to help people regulate emotions. It started as a treatment for borderline personality disorder, and current research shows it may help with many different mental illnesses or concerns, particularly self-harm.
     Key differences between CBT and DBT are validation and relationships. DBT teaches you that your experiences are real, and it teaches you how to accept who you are, regardless of challenges or difficult experiences. Relationships are also very important in DBT—including the relationships between you and your DBT practitioner. You may have frequent check-ins to talk about any successes or problems. Treatment may include a mix of one-on-one sessions and group sessions. In addition to CBT skills, you’ll learn skills around managing your emotions, building relationships with others, coping well with problems or distress, acceptance, and mindfulness.
     As with many talk therapies, it takes time and effort to enjoy the benefits of CBT and DBT skills. But once people master skills with support from your CBT or DBT therapist, they often find that their new skills and strategies become second nature—they are tools that last a lifetime.
    """

    let a63 =
     """
     There are many different types of antidepressant medications, and they each work in different ways. Antidepressants are divided into “classes” based on what they do and which chemical messengers in the brain (called neurotransmitters) they are thought to influence. Each class may contain several different medications, which each have slightly different ways of working. Below, you’ll find common classes and examples of common medications. The first name is the generic name and name in brackets is the brand name.
     SSRIs or selective serotonin reuptake inhibitors: fluoxetine (Prozac), paroxetine (Paxil), citalopram (Celexa), escitalopram (Cipralex), and sertraline (Zoloft)
     SNRIs or serotonin and norepinephrine reuptake inhibitors: venlafaxine (Effexor) and duloxetine (Cymbalta)
     NDRIs or norepinephrine-dopamine reuptake inhibitors: bupropion (Wellbutrin and Zyban)
     NaSSAs or noradrenergic and specific serotonergic antidepressants: mirtazapine (Remeron), which can also be classed as a TeCa or tetracyclic antidepressant
     SARIs or serotonin antagonist and reuptake inhibitors: trazodone (Desyrel)
     There are other classes of antidepressants (such as MAOIs or triclycics) that are much older and have more side effects or restrictions. They are usually prescribed when newer antidepressants don’t work. Other medications such as lithium, thyroid medication, or antipsychotics may also be prescribed, often in combination with an antidepressant to boost its effect. Antidepressants are not only used to treat depression—they may be prescribed to treat other illnesses like anxiety disorders.
     Only medical doctors like family doctors or psychiatrists can prescribe antidepressants. If your doctor recommends that you consider antidepressants, keep in mind that most people have to try a few different options before they find the right medication. It can be a frustrating process, especially when you feel unwell, but it’s important to find something that works for you! Side effects and benefits can vary significantly between different people, and it’s difficult to predict how a medication might work without trying it out first. Everyone responds to them differently. It’s very important to have ongoing discussions with your health care team regarding your medication so you can bring up any problems or concerns—or even ask more about how your particular antidepressant works.
    """

    let a64 =
     """
     If possible, bring up your concerns with the professional who provided the diagnosis. That way, the professional can answer your questions and you can better understand their decision.
     If that doesn’t resolve the situation or a follow-up appointment isn’t possible, you can ask for a second opinion. A second opinion is an assessment from a different professional. This can give you better understanding of what’s going on and what to do about it. Second opinions are common when it comes to major health decisions—you won’t hurt anyone’s feelings and your doctor will try to accommodate reasonable requests for a second opinion. Talk to your family doctor (or go to a walk-in clinic) to discuss your options and get a referral to a different program or health professional, if needed.
     For more how to get a second opinion, see HealthLinkBC’s factsheet at www.healthlinkbc.ca.
     For general tips on managing a diagnosis of a mental illness and working well with health care professionals, see HeretoHelp’s Managing a Mental Illness series.
    """

    let a65 =
     """
     If you’re concerned about your medications, it’s important to talk with the doctor or psychiatrist who prescribed your medications. While it can take a few weeks to really see improvements with many antidepressants, it’s still a good idea to talk to your doctor about what to expect.
     Talk to the doctor that prescribed your medication if you experience symptoms or side effects that are distressing you. If you want to talk to a trusted professional about the most common side effects, call your pharmacist. You can reach a pharmacist by phone after-hours by calling 811.
     It’s also best not to stop taking the medication or changing the dose on your own without first talking to a health care provider. While it might be tempting to stop taking your medication when you start feel better, it’s important to follow your doctor’s instructions.
     In some cases, people can have an allergic reaction to a medication. Some reactions are not serious, like a rash. In these cases, you can call the pharmacist or call 811 to reach help after-hours. If you have a serious reaction like difficult breathing, dizziness, or confusion, call 911 right away.
     When you start a new medication, your pharmacist will give you a printout with information like side effects, signs of an allergic reaction, how long it might take to work, and other information. It’s good information to keep on hand, but it isn’t always easy to read. When you pick up your medication, you can ask the pharmacist to go over the information with you so you understand what you should look for.
     If a particular antidepressant or psychiatric medication just isn’t working for you, there are many different options! Unfortunately, finding the right medication can take some trial and error. Different people can have very different experiences with the same medication, and often you need to try something to see if it works (or doesn’t work) for you. This can be a frustrating process, especially when you want to start feeling better, but it’s important to keep trying and work with your doctor so you understand your options. Many people feel intimidated talking to health professionals, but it’s important to share information so you both understand what’s going on and can make good, informed decisions about your health care. Some people also feel embarrassed talking about symptoms or side effects like changes in sex drive or digestion, but its important information for your doctor (and they know that changes in sex drive or digestion are common concerns). You can find strategies, including a mood journal, to help you work with doctors and other health care providers in our Working With Your Doctor toolkit.
    """

    let a66 =
     """
     It’s difficult when an adult child, sibling, parent, friend, co-worker, or other important person is struggling or behaving in ways that are causing harm. This can be a tricky situation—you want to help, but most adults are responsible for their own care.
     There are two important points to think about. First, diagnosing a health condition, especially when symptom-checking is so easy online, can be dangerous. Diagnosis is still always best left to professionals who can look at the whole picture. Remember, too, that the person you care about may have a very different idea of what’s causing their difficulties and what the negative impacts are on their life. Second, except in rare cases, the person being treated needs to be an active player in their own recovery to continue with their treatment, just as they would for any other health problem. If the vast majority of cases, you cannot do this work entirely for them—and trying to do so may damage your relationship.
     Be honest about your concerns, the impacts you are seeing that worry you, listen to their point of view and work together to find a solution that works for everyone, even if it means a compromise. You may want to offer to go with them to an appointment, encourage them to do an online screening self-test, or involve someone else close to them who may be similarly concerned and may have more influence in encouraging them to notice changes and seek help. Because you may be feeling frustrated and helpless, it’s important to get care and support for yourself during this time, especially if you’re very close to the person you’re worried about.
     In serious situations, the BC Mental Health Act allows someone to be held for a period of time for psychiatric assessment without their consent if they are at risk of harming themselves or others. While it’s necessary in some situations to get someone the care they need, it can be traumatic for everyone involved. For more on the BC Mental Health Act, see the Guide to the Mental Health Act.
    """

    let a67 =
     """
     It can be hard to figure out what to do if you’re concerned about a young person in your family. Many people start by talking with their family doctor. If you don’t have a family doctor, you can find a doctor through the College of Physicians and Surgeons of BC. You can also visit a walk-in clinic. Depending on the situation, your family doctor may offer everything you need. If your child needs more specialized services, such as psychiatry services, your family doctor needs to make a referral for your child. Many family doctors can also recommend community services or supports in your community. Learn more about the role of family doctors in the info sheet What to Expect from Your Family or Walk-In Clinic Doctor.
     If your child’s difficulties affect their performance or behaviour at school, the school may be involved. If your child’s school has a counsellor, talk to them about services you can access through the school. School counsellors can also suggest community services. See the info sheet What to Expect from Your Child's School.
     Kelty Mental Health Resource Centre offers information, resources, peer support, and system navigation to children, youth, and families experiencing mental health or substance use challenges. Their Help Finder tool and help you navigate the mental health system. Kelty Mental Health is based at BC Children’s Hospital in Vancouver, but they support young people and their families across the province.
     Institute of Families for Child and Youth Mental Health advocates for healthy young people and family support. They offer resources and education events across BC.
     The Canadian Mental Health Association’s BC Division offers Confident Parents: Thriving Kids, a phone-based education and support program to help parents or caregivers manage mild to moderate behaviour problems for children ages 3 to 12. This program is free, but it requires a doctor’s referral.
     You may also want to check out these resources from HeretoHelp on child and youth mental health and substance use:
    """

    let a68 =
     """
     A brain injury itself isn’t the same as a mental illness, though someone who experiences a brain injury may also experience mental health problems. These mental health problems may stem from the injury itself or from thoughts around the injury (like feelings of loss, anger, or frustration when quality of life changes). In some cases, mental health challenges may not be related to a brain injury at all. The good news is that mental health problems are treatable, even if you or someone you care about has experienced a brain injury. It may be helpful to find a service provider who is familiar with both brain injuries and mental health.
     For more information and support, visit the BC Brain Injury Association. You can also find local and regional groups and organizations in BC through the Brain Injury Association of Canada.
    """

    let a69 =
     """
     We naturally want to help a loved one who isn’t feeling well. How we can or should help may seem fairly obvious when a loved one experiences a physical health problem, but many people say they’re not sure how to best help when a loved one experiences a mental illness like depression. Here are some tips:
     You don’t have to understand exactly what someone else is experiencing, you just need to recognize that it’s a difficult experience. You can try something like, “I can see that this experience or these symptoms are really painful for you,” or, “I’m sorry to hear that you’re feeling unwell.” If you have experienced depression yourself, you might say, “I know how you feel.” Just remember that everyone experiences illnesses like depression differently, and empathy is about recognizing the impact of the illness, not comparing symptoms.
     You don’t have to be an expert, but learning more about depression can help you understand what’s going on (and maybe dispel some of the unhelpful myths around depression). Our Depression info sheet is a great place to start, and we have a list of resources at Q&A: Where can I learn more about depression?
     Sometimes talking about problems or concerns can really help—in fact, many people who experience a mood disorder say that they just want to be heard. It’s important to understand that talking about something difficult like experiences of depression can be very hard for your loved one. You cannot force them to talk about it, but you can invite them to, and create safe and quiet spaces to talk. If a loved one opens up to you, listen actively—that is, without distractions like your phone or the TV. Really pay attention to what they have to say. Listen with empathy and without judgement. Even if you don’t understand the problem or see the problem in a different way, your main concern is the distress or difficult feelings your loved one is experiencing. You can find in-depth tips on listening and communicating well in Module Three of the Family Toolkit. Some people are not ready to talk about everything at once, or at all. That’s okay! Respect your loved one’s boundaries and let them tell you what they’re ready to talk about.
     Even when you have the best intentions, unsolicited advice can be unhelpful. You likely can’t fix the problem, and you may not know the whole story. If you’d like to share what worked for you in a similar situation, you can ask if the other person would like to talk about strategies that worked for you.
     Different people need different things—don’t assume you know what’s best! Some people need emotional help, like someone they can talk with. Other people may have a good relationship with a counsellor or other professional, but they might need practical help, like help around the house or help sticking to their treatment plan. And others may simply want to be included in some social events. By asking what a person needs, you may also be less tempted to give advice.
     When people experience an episode of depression, they can have a lot of very negative thoughts and feelings. This can take a real toll on others. It’s a good idea to seek support for yourself—there are support groups just for family members and friends. The BC Schizophrenia Society has a directory of family support groups around BC for any mental illness.
     If your loved one isn’t happy with their treatment or would like to try a different option, you can also help them seek different resources or services. You can find general advice in the Ask Us section of HeretoHelp. To find local services, call the BC Mental Health Support Line at 310-6789 (no area code) or email us.
     This is very important! You are not responsible for your loved one’s treatment (unless your loved one is your child under 19)—but you can support them as they work towards recovery. In most cases, your loved one’s treatment and recovery plans are their choice—you are there to offer support and encouragement.
     In order for any treatment to work, your loved one needs to be actively involved. Forcing or threatening treatment generally doesn’t work and will only hurt everyone involved. In most cases, anyone 19 years of age and older is free to make their own choices. And their choices may include refusing treatment or choosing a treatment you disagree with. It’s important to be respectful and keep honest communication open between you. You can learn more about dealing with this situation in Ask Us: An adult in my life seems ill and won’t find help. What can I do?
     If your loved one says that they have thoughts of ending their life, it’s important to take action. Call 1-800-SUICIDE (1-800-784-2433) at any time or message online at www.crisiscentrechat.ca between noon and 1am. If you think your loved one is in immediate danger, you can always call 911 or go to a hospital emergency room.
    """

    let a70 =
     """
     We naturally want to help a loved one who isn’t feeling well. How we can or should help may seem fairly obvious when a loved one experiences a physical health problem, but many people say they’re not sure how to best help when a loved one experiences a mental illness like schizophrenia. Here are some tips:
     You don’t have to be an expert in schizophrenia, but learning more can help you understand what’s going on. There are a lot of myths about schizophrenia, so it’s a good idea to find some trustworthy resources. Our Schizophrenia info sheet is a great place to start. You can also find a lot of information from the BC Schizophrenia Society.
     Sometimes talking about problems or concerns can really help. It’s important to understand that talking about something difficult like experiences of schizophrenia can be very hard for your loved one—and the symptoms of schizophrenia can also make conversations difficult. If a loved one opens up to you, listen actively—that is, without distractions like your phone or the TV. Really pay attention to what they have to say. Give them time to finish their thoughts, even if it takes a bit longer than usual. Listen with empathy and without judgement. Even if you don’t understand the problem or you see the problem in a different way, your main concern is the distress or difficult feelings your loved one is experiencing. You can find in-depth tips on listening and communicating well in Module Three of the Family Toolkit. Some people are not ready to talk about everything at once, or at all. That’s okay! Respect your loved one’s boundaries and let them tell you when they’re ready to talk.
     Symptoms of schizophrenia like hallucinations (sensations that aren’t real, like hearing voices) or delusions (beliefs that can’t be true, like believing that you are being followed by a spy) can take some time to stop even when people are receiving treatment and following their treatment plan. As a group, these very distressing symptoms are called psychosis. Many people have a hard time responding to a loved one’s hallucinations or delusions. It’s best to avoid arguing about these experiences. Remember that delusion are symptoms of schizophrenia—they are not thoughts that you can talk someone out of. Telling someone that their experiences aren’t real or aren’t true doesn’t help when the experiences feel very real to that person! A better approach is to empathize with the feelings that hallucinations or delusions bring up—without confirming or denying the hallucination or delusion. For example, if a loved one is frustrated or upset when they hear voices, it isn’t helpful to say something like, “You’re okay! It isn’t real. I don’t hear anything.” Instead, you might say, “I can only image how upsetting that voice must be. I can see the voice makes you feel scared.” Know that with good treatment and support, symptoms like hallucinations and delusions become much easier for people to manage and lose importance.
     Ask how you can help. When people experience a serious mental illness like schizophrenia, they may want to plan how they can take action if they start to feel unwell again, especially if they have dependent children. These plans, such as advanced directives or Ulysses Agreements, are made when a person feels well and are meant to communicate their wishes to loved ones and their care team. Ask your loved one if they have a plan in place so you know what they need if they need help. If you’d like to learn more about planning for care, see the BC Schizophrenia Society.
     If a loved one is experiencing an episode of psychosis or is recovering for an episode of psychosis, they might need extra help. For example, people who are actively experiencing hallucinations or delusions might need a lot of personal space and feel uncomfortable being around a lot of people or even making eye contact. When people are recovering from an episode of psychosis, they may need a quiet space and a lot of rest. Sometimes people can get back into their usual routines fairly quickly, while other times it may take a lot of time (and effort) to get back into routines. Keep in mind that too much help can be a bit counterproductive. It may well be faster and easier for you to take care of your loved one’s tasks or chores yourself, but rebuilding activity and confidence are a big part of recovery. Encourage and support your loved one as they take on daily responsibilities, and let them tell you when they need extra help.
     Schizophrenia can be a difficult illness—for everyone. During episodes of psychosis, your loved one may experience frightening sensations that you can’t understand. They may act in ways that you don’t understand. Other symptoms of schizophrenia can make it hard for people to express emotions or feelings, communicate clearly, or seem interested in others. It’s important to know that these are symptoms of an illness. They are no one’s fault, but they can still be hard to cope with. Consider reaching out to a family and friends support group for your own support. The BC Schizophrenia Society has a directory of groups around BC at www.bcss.org/monthly-meetings-calendar/.
     As a family member, it’s important to take care of yourself. Try to maintain your regular schedule and activities, such as your exercise routine and hobbies. Ask another family member or good friend to provide help with caregiving, especially in the early days of your loved one's illness. If you need help balancing time for self-care with caregiving duties, check out the BC Schizophrenia Society’s Family Respite Program.
     Try to maintain your friendships or the network of people that you have in your life. These will later become important supports as your loved one recovers. Educate them and update them on your loved one's recovery. People are sometimes afraid to ask questions about schizophrenia and this will put them at ease.
     This is very important! You are not responsible for your loved one’s treatment (unless your loved one is your child under 19), but you can support them. Schizophrenia can make it difficult for people to make and go to appointments and follow their treatment plan. With your loved one’s permission, you may choose to help by reminding them of appointments, taking them to appointments, or whatever helps in your situation. If your loved one isn’t happy with their treatment or would like to try a new approach, you can encourage them to talk with their care team, like their doctor or mental health team—it can be dangerous to stop or change a treatment without a doctor’s support.
     Treatment can be a difficult area for loved ones. It’s hard to see someone you love in pain. You might be scared of the things your loved one is experiencing. You want to help. But in order for any treatment to work, your loved one needs to be active in their care. Forcing or threatening treatment generally doesn’t work (or if it does, in the case of an emergency, only for a short time) and can often hurt everyone involved. In most cases, anyone 19 years of age and older and not at risk of harm is free to make their own choices. And their choices may include refusing treatment or choosing a treatment that you disagree with. It helps everyone if you can be respectful and keep honest communication open between you. You can learn more about dealing with this situation in Q&A: An adult in my life seems ill and won’t find help. What can I do?.
     If you think your loved one is at risk of harming themselves or others and they refuse help, it is possible to have them evaluated by a psychiatrist under the Mental Health Act. This process may involve police and other first responders, and it can be a difficult and stressful process for everyone. But it can also be a necessary step if someone is in danger. You can learn more about the Mental Health Act in the info sheet Families Coping with a Crisis and you can find the Guide to the Mental Health Act at www.health.gov.bc.ca/library/publications/year/2005/MentalHealthGuide.pdf. For a more in-depth discussion of the Mental Health Act, see a video with lawyer and health law consultation Gerrit Clements.
     If your loved one says that they have thoughts of ending their life, it’s important to take action. Call 1-800-SUICIDE (1-800-784-2433) at any time or message online at www.crisiscentrechat.ca between noon and 1am. If you think your loved one is in immediate danger, you can always call 911 or go to a hospital emergency room.
    """

    let a71 =
     """
     Someone else’s illness is not your fault. You also can’t control how someone else feels, their illness, or the things they do or say. What you can do is take care of yourself.
     Learning more about your parent’s illness can make it a bit easier to understand what they experience. On this website, you can find easy-to-read booklets on mental illnesses as well as longer info sheets on many different mental illnesses. You can also find information for young people from the Centre for Addiction and Mental Health.
     It’s important to take care of yourself, too! A lot of people have a big mix of feelings when a parent isn’t well. You might feel angry, embarrassed, scared, or many other things. These feelings and experiences can have a big impact on the way your think about yourself and other people. When you’re on an airplane and the flight attendants go through the safety demonstration, they tell you to put your own oxygen mask on before your help other people. That’s because it’s hard to help someone else if you aren’t well yourself. Here are some programs specifically for young people:
     Kids in Control Support Group Program from the BC Schizophrenia Society helps children and youth ages 8-18 understand mental illnesses, cope with challenges, and take care of their own health and well-being. If Kids in Control is not currently available at your local branch, your branch can order materials so you can work through them on your own.
     Super Saturday Club from CMHA Vancouver-Fraser is a free recreation group for children and youth ages 8-17 who have a parent that experiences a mental illness. To learn more, visit www.vancouver-fraser.cmha.bc.ca.
     If you’re having trouble coping with something going on at home, ask for some help! Here are some places you can go:
     A teacher or counsellor at school
     An adult you trust, like a friend’s parent or another family member
     Kids Help Phone: visit www.kidshelpphone.ca to learn about taking care of yourself and chat with a counsellor, or call 1-800-668-6868 to talk with a counsellor
     YouthinBC: Visit www.youthinbc.com to chat with a trained volunteer (noon-1.00am Pacific Time)
     BC Mental Health Support Line: If you ever need to talk to someone or you’d like to see what kind of resources are in your community, call 310-6789 (no area code) at any time
    """

    let a72 =
     """
     If you need to talk to someone or you aren’t sure how to help someone you care about, call 1-800-SUICIDE (1-800-784-2433) at any time. Or type your concern using live chat (like texting online) at www.crisiscentrechat.ca between noon and 1am. They can help you, and they can suggest good local resources. If you’re at risk of harm or think someone else is in danger and you need help right now, call 911.
     It’s scary to have thoughts of suicide or hear that someone you can care about has thoughts of suicide. Thoughts of suicide don’t mean that someone will end their life, but it’s a sign that they need extra help or support. If you have thoughts of suicide, it’s important to talk with your doctor or mental health service provider. If you’re supporting someone else, encourage them to seek help.
     Coping With Suicidal Thoughts is a good resource to help you understand and manage difficult feelings.
     Our info sheet on suicide has information on suicide, helping someone else, and finding help. What is Suicide? is a booklet with audio in plain language for lower literacy readers.
     The Centre for Suicide Prevention has many resource toolkits on suicide for different audiences, including people serving in the military, young people, teens, older adults, Aboriginal community members, and LGBT community members.
    """

    let a73 =
     """
     Using cannabis has the potential for benefits and harms. Young people use cannabis, like other psychoactive drugs, to feel good, to feel better, to do better or to explore. Trying cannabis out of curiosity, as an experiment, or while socializing with friends, is related to moderate use and lower potential for harm. Using cannabis to cope with daily life, deal with unpleasant feelings, or fit in with a social group has higher potential for harm. This is because dealing with these kinds of issues is associated with frequent and heavier use, less thought about potential harms and little consideration of alternatives for coping such as talking with a parent or trusted adult or physical activity with friends.
     Evidence suggests that the younger a person is when they start using cannabis and the more often they use, the greater the potential for harms. The legal age to use cannabis in BC is 19. However, our brains do not finish developing until about age 25. Delaying cannabis use until early adulthood may reduce potential harmful effects on the brain.
     Some young people, especially those with many factors predisposing them to serious and persistent mental health issues, should probably not use cannabis. Cannabis has been associated with an increased risk for psychosis and schizophrenia in this small group of people. Some people with serious mental health issues have also reported that using cannabis has helped them cope with their illness by helping them feel less anxious or stressed. As in most situations, balancing potential benefits and harms of using cannabis will be key for young people who have serious mental health concerns.
     Mixing drugs, such as cannabis and alcohol, can also increase the possibility of experiencing harms. Intoxication may be more intense and long lasting and the young person may not appreciate how impaired they are. We often suggest, “Not too much, not too often, and only in a safe context” as a simple way to gauge your use of any psychoactive substance.
     As a parent or caring adult, an open respectful relationship with a young person is one of your best resources and ways to prevent harms from substance use. Letting the youth know they can approach you at any time to talk about cannabis, other substances, or anything else of concern to them, says they matter to you and you are ready to listen and engage in dialogue with them. This is a great place to begin addressing anything that might come the young person’s way in life!
     The Canadian Institute for Substance Use Research, formerly CARBC, is a member of the BC Partners for Mental Health and Addictions Information. The institute is dedicated to the study of substance use in support of community-wide efforts aimed at providing all people with access to healthier lives, whether using substances or not. For more, visit www.cisur.ca.
    """

    let a74 =
     """
     ‘Mental health’ and ‘mental illness’ are increasingly being used as if they mean the same thing, but they do not. Everyone has mental health, just like everyone has health. As the World Health Organization famously says, “There is no health without mental health.” In the course of a lifetime, not all people will experience a mental illness, but everyone will struggle or have a challenge with their mental well-being (i.e., their mental health) just like we all have challenges with our physical well-being from time to time.
     When we talk about mental health, we’re talking about our mental well-being: our emotions, our thoughts and feelings, our ability to solve problems and overcome difficulties, our social connections, and our understanding of the world around us.
     A mental illness is an illness the affects that way people think, feel, behave, or interact with others. There are many different mental illnesses, and they have different symptoms that impact peoples’ lives in different ways.
     Health isn’t like an on/off switch. There are different degrees of health. People move on a continuum ranging from great or good health to so-so health to poor health to illness or disability. For example, some people have good health and have no problems going about their lives. Some people experience serious health problems, and their poor health has a very negative impact on their life. Some people have serious health problems that last for a long time, and others have serious health problems that resolve very quickly. Many people fall somewhere in the middle—they’re generally in good health, though the occasional problem may come up. Mental health is the same way.
     Just as someone who feels unwell may not have a serious illness, people may have poor mental health without a mental illness. We all have days where we feel a bit down, or stressed out, or overwhelmed by something that’s happening in our lives. An important part of good mental health is the ability to look at problems or concerns realistically. Good mental health isn’t about feeling happy and confident 100% of time and ignoring any problems. It’s about living and coping well despite problems.
     Just as it’s possible to have poor mental health but no mental illness, it’s entirely possible to have good mental health even with a diagnosis of a mental illness. That’s because mental illnesses (like other health problems) are often episodic, meaning there are times (‘episodes’) of ill health and times of better or good health.
     With the right supports and tools, anyone can live well—however they define well—and find meaning, contribute to their communities, and work towards their goals.
    """

    let a75 =
     """
     Our info sheets on mood disorders, bipolar disorder, and depression offer information on mood problems, treatment options, and resources in BC. We also offer What is Depression? It’s a booklet with audio in plain language for lower literacy readers. You can take a screening self-test for depression (and other mental health concerns). The adult depression tool also screens for signs of bipolar disorder.
     If you want to go beyond the basics, our Managing Depression series can help you deal with a diagnosis of depression, work with doctor, and prevent relapse of depression. You’ll also find many experiences and perspectives around depression—reading personal stories can help you feel less alone.
    """

    let a76 =
     """
     Anxiety is a normal reaction to many different kinds of events and situations in our lives. Anxiety is one of our internal warning systems that alerts us to danger or other threats and prepares our bodies to fight back or get out of a dangerous situation. (Scientists call this the ‘fight, flight, or freeze’ response.)
     A manageable amount of anxiety from time to time can be helpful. For example, it can motivate you to prepare for a test a school or finish a task at work. Even happy events like moving to a new home or celebrating an important milestone can bring up anxiety—all of this is just part of being human.
     Anxiety is a problem when it becomes overwhelming or unmanageable and it comes up unexpectedly. Anxiety disorders are mental illnesses that have a big impact your life. People may avoid going about their daily lives in order to avoid anxiety. They may experience a lot of uncomfortable physical sensations and physical health problems. Many people say that they know their anxiety isn’t based in reality, but they feel ‘trapped’ by their thought and feelings. Anxiety disorders can be treated. It’s important to seek help if you’re concerned about anxiety in your life.
     Normal anxiety...
     Is related to a specific situation or problem
     Lasts only as long as the situation or problem/p>
     Is proportional to the situation or problem/p>
     Is a realistic response to a realistic problem or situation/p>
     When someone experiences an anxiety disorder...
     Anxiety may come up unexpectedly, for seemingly no reason
     The anxiety response to a situation or problem may be much stronger that they would expect
     They may experience a lot of unrealistic anxiety, such as fear of a situation that likely will never happen
     Anxiety may last for a long time, even when the situation or problem has been resolved
     Anxiety may feel impossible to control or manage
     They may avoid situations or things that they believe to trigger anxiety symptoms
     Here’s an example of normal anxiety and an anxiety disorder. Many people are a bit nervous about flying, which is a totally normal reaction. Yet, if they have to travel for work, they can can get on a plane without any problems. Someone with an anxiety disorder, on the other hand, may not be able to travel to the airport—even if it puts their job in jeopardy.
     *Formerly classified as an anxiety disorder and currently classified as Trauma- and Stressor-Related Disorders
     **Formerly classified as an anxiety disorder and currently classified as Obsessive-Compulsive and Related Disorders
    """

    let a77 =
     """
     Stress and anxiety are often used interchangeably, and there is overlap between stress and anxiety. Stress is related to the same ‘fight, flight, or freeze’ response as anxiety, and the physical sensations of anxiety and stress may be very similar.
     The cause of stress and anxiety are usually different, however. Stress focuses on mainly external pressures on us that we’re finding hard to cope with. When we are stressed, we usually know what we’re stressed about, and the symptoms of stress typically disappear after the stressful situation is over.
     Anxiety, on the other hand, isn’t always as easy to figure out. Anxiety focuses on worries or fears about things that could threaten us, as well as anxiety about the anxiety itself. Stress and anxiety are both part of being human, but both can be problems if they last for a long time or have an impact on our well-being or daily life.
    """

    let a78 =
     """
     Sadness is a normal reaction to a loss, disappointment, problems, or other difficult situations. Feeling sad from time to time is just another part of being human. In these cases, feelings of sadness go away quickly and you can go about your daily life.
     Other ways to talk about sadness might be ‘feeling low,’ ‘feeling down,’ or ‘feeling blue.’ A person may say they are feeling ‘depressed,’ but if it goes away on its own and doesn’t impact life in a big way, it probably isn’t the illness of depression.
     Depression is a mental illness that affects your mood, the way you understand yourself, and the way you understand and relate to things around you. It can also go by different names, such as clinical depression, major depressive disorder, or major depression. Depression can come up for no reason, and it lasts for a long time. It’s much more than sadness or low mood. People who experience depression may feel worthless or hopeless. They may feel unreasonable guilty. Some people may experience depression as anger or irritability. It may be hard to concentrate or make decisions. Most people lose interest in things that they used to enjoy and may isolate themselves from others. There are also physical signs of depression, such as problems with sleep, appetite and energy and unexplainable aches or pains. Some may experience difficult thoughts about death or ending their life (suicide). Depression lasts longer than two weeks, doesn’t usually go away on its own, and impacts your life. It’s a real illness, and it is very treatable. It’s important to seek help if you’re concerned about depression.
    """

    let a79 =
     """
     Dysthymia, now called persistent depressive disorder or PDD, is a mood disorder. It is related depression (major depressive disorder). The difference between the two is in the number of symptoms and the amount of time that they last. Someone diagnosed with PDD would experience two to four of the symptoms below for at least two years with no periods of wellness during that time, while someone diagnosed with major depressive disorder would experience five or more of the symptoms below for at least two weeks.
     Symptoms of PDD include:
     There is a myth that PDD is not as severe an illness as major depressive disorder, but research shows that the disability of the illness, like the ability to work productively and enjoy hobbies, may be as severe in PDD as it is in major depressive disorder. As PDD involves a smaller number of symptoms that last for a very long time, many people begin to assume PDD is just part of their personality rather than an illness that can be effectively treated. So you should most certainly talk to a doctor or mental health professional if you think you might have PDD.
    """

    let a80 =
     """
     Cyclothymic disorder is a subtype of bipolar disorder. Much like bipolar disorder, the symptoms of cyclothymia include three or more symptoms of hypomania, and five or more symptoms of depression. Like bipolar disorder, people may experience wellness between episodes of hypomania and depression.
     Symptoms of hypomania include:
     Symptoms of depression include:
     Talk to a doctor or mental health professional if you think you might have cyclothymic disorder.
    """

    let a81 =
     """
     Rapid cycling means that someone diagnosed with bipolar disorder (or depression) experiences four or more episodes of depression and/or mania in one year.
     Rapid cycling can happen any time someone experiences bipolar disorder—about 10-20% of people diagnosed with bipolar disorder experience rapid cycling at some point. In many cases, rapid cycling eventually goes away on its own and people return to a pattern of longer and less frequent episodes.
    """

    let a82 =
     """
     Borderline personality disorder or BPD is a treatable illness. It’s made up of five groups of symptoms around behaviours, emotions, relationships, sense of identity, and awareness. You can read our info sheet on borderline personality disorder. We also have an entire issue of Visions Journal on BPD, where you’ll find information on treatments and support and personal stories from people who are managing BPD and living well.
     The Borderline Personality Disorder Society of BC offers a support group in Victoria and a resource library, and they have a listing of services in BC.
     In Vancouver, the DBT Centre of Vancouver offer dialectical behaviour therapy (DBT) ad specializes in helping people who experience BPD. The offer individual, group, and family counselling, and they have a useful blog on DBT skills.
     There are several good, helpful books available now, including:
    """

    let a83 =
     """
     A personality disorder is a pattern of thoughts, feelings, and behaviours that last for a long time and causes some sort of problem or distress.
     Schizoid personality disorder or SPD affects social interactions and relationships. People with SPD may have a hard time relating to others and showing emotions. They may avoid close relationships and prefer to spend their time alone, seeming distant even to close family members. Many people don’t respond to strong emotions like anger, even when others try to provoke them. On the outside, people with SPD may seem cold or aloof, showing little emotion.
     While they have a similar name, schizoid personality disorder isn’t the same as schizophrenia.
     Schizoid personality disorder is believed to be relatively uncommon. While some people with SPD may see it as part of who they are, other people may feel a lot of distress, especially around social interactions. Some medications may help people manage symptoms and psychotherapy may help people build new skills and improve relationships.
     To find help for schizoid personality disorder, talk to your family doctor, find a psychologist through the BC Psychological Association, or call 811 to talk to a HealthLink BC navigator.
    """

    let a84 =
     """
     A personality disorder is a pattern of thoughts, feelings, and behaviours that last for a long time and causes some sort of problem or distress.
     Antisocial personality disorder or ASPD affects the way people think about the rights of others. Someone with ASPD may disregard laws or expectations, lack remorse when they hurt others or break the law, make reckless decisions, and believe they are superior to others. People may see someone with ASPD as overly dramatic, impulsive, manipulative, and deceitful. Some people may appear charming, at least on the surface. Like all mental illnesses, antisocial personality disorder is a spectrum. Some people may only occasionally act out, while others may break the law often and spend a lot of time in the criminal justice system.
     ASPD is only diagnosed in adults, but people with ASPD start to have problems with conduct or antisocial behaviours at a young age. They may be diagnosed with conduct disorder during childhood.
     Treatment for antisocial personality disorder, usually psychotherapy, can help reduce the harms of ASPD and help people build empathy towards others. ASPD is treatable and it may improve as a person approaches middle age.
     All of us have hurt someone else or acted without thinking of others' needed. It’s important to remember that antisocial personality disorder is an enduring pattern around lack of empathy and lack of remorse. Only a doctor or mental health professional can diagnose illnesses like ASPD.
     To find help for antisocial personality disorder, talk to your family doctor, find a psychologist through the BC Psychological Association, or call 811 to talk to a HealthLink BC navigator.
    """

    let a85 =
     """
     A personality disorder is a pattern of thoughts, feelings, and behaviours that last for a long time and causes some sort of problem or distress.
     Obsessive-compulsive personality disorder or OCPD is about control. People with OCPD have very inflexible thinking and expect everything to be ordered, perfect, and done their "correct" way. This happens at the expense of other important things in life, including relationships with others. Work can take priority over every other part of life, too, and people with OCPD may seem excessively dedicated, but may be unable to complete tasks due to perfectionism. They may struggle to delegate and may distrust other people’s contributions. People with OCPD may not tolerate uncertainty and may have a very rigid understanding of the world—something is either right or wrong. They may also have a hard time spending money on themselves or others, and they may experience hoarding, the inability to throw away items from their homes. The conflict between the desire for neatness or order and the inability to throw things out may cause a lot of anxiety.
     While obsessive-compulsive personality disorder and obsessive-compulsive disorder (OCD) have a similar name, they are not the same illness. People with obsessive-compulsive disorder usually understand that their obsessions and compulsions are illogical and usually experience a lot of distress, even though they may not be able to stop obsessions or compulsions. Compulsions are an attempt to reduce anxiety, not to find pleasure. People with obsessive-compulsive personality disorder may view their thoughts as part of who they are, see their thoughts as logical, and may find pleasure or benefit in completing compulsive tasks. They may experience a lot of distress when they can’t achieve control or the perfectionism they want.
     Obsessive-compulsive personality disorder is one of the most common personality disorders. Treatment may include some combination of psychotherapy, medication, and self-help strategies. To find help for OCPD, talk to your family doctor, find a psychologist through the BC Psychological Association, or call 811 to talk to a HealthLink BC navigator.
    """

    let a86 =
     """
     Binge-eating disorder or BED is a type of eating disorder. It involves episodes of eating a lot of food in a short amount of time, past the point of feeling full, and feelings of being out of control or unable to stop eating. People who experience binge-eating disorder may binge even when they don’t feel hungry. They may feel temporarily comforted by food, and then feel depressed, upset, guilty, or ashamed of their eating. As a result, many people try to keep binge-eating symptoms a secret. You can’t tell if someone experiences binge-eating disorder just from the way they look or the way they eat around others.
     While a lot of people have the experience of eating too much a few times and feeling uncomfortable after, people who experience binge-eating disorder experience many binges for a long period of time.
     Binge-eating disorder is treatable. Talk to your doctor or a mental health professional if you think you might have binge-eating disorder.
    """

    let a87 =
     """
     Sometimes, people confuse dissociative identity disorder, formerly known as multiple personality disorder, and schizophrenia. Schizophrenia does mean “split mind,” but the name was meant to describe the ‘split’ from reality that you experience during an episode of psychosis, as well as changes in thoughts, emotions, and other functions. Dissociative identity disorder, on the other hand, does cause a split or fragmented understanding of a person’s sense of themselves.
     Dissociative identity disorder is really more about fragmented identities than many different personalities that develop on their own. Most people see different parts of their being as part of the whole person. For people who experience DID, identity fragments may have very different characteristics, including their own history, identity, and mannerisms. A key part of DID is dissociation—feeling detached to the world around you. People who experience DID may have many unexplainable gaps in their memory, forget information they’re already learned, or have difficulties recalling things they’ve said or done. Unlike portrayals of DID on TV or in movies, DID may not be obvious to others, and it can take a lot of time to come to the diagnosis.
     Schizophrenia is a serious mental illness that causes hallucinations (sensations that aren’t real) and delusions (beliefs that can’t possibly be true, in addition to other symptoms like jumbled thoughts, jumbled speech, and difficulties expressing emotions. People who experience schizophrenia may hear or feel things that aren’t real or believe things that can’t be real, but these aren’t separate identities.
    """

    let a88 =
     """
     Psychosis is a syndrome or group of symptoms. Someone experiencing an episode of psychosis is having a ‘break’ with reality. Major symptoms of psychosis are hallucinations and delusions. Hallucinations are sensations that are not real, such as hearing voices or sounds that aren’t real. Hearing voices is a common hallucination, but hallucinations can be experiences with any sense—hearing, sight, smell, taste, or touch. Delusions are strong beliefs that can’t possibly be true. Common delusions include the belief that someone is following or monitoring you, or the belief that you have extraordinary powers or abilities. Other symptoms of psychosis include difficulties concentrating, completing tasks, or making decisions. Thoughts may feel ‘jumbled’ or confused. Some people have a hard time following conversations or speaking clearly. Psychosis can even affect the way people move or express their emotions.
     Schizophrenia is a mental illness that causes psychosis, but schizophrenia also has other symptoms. And it isn’t the only cause of psychosis. In some cases, other mental illnesses cause psychosis, including depression, bipolar disorder, dementia and borderline personality disorder. Psychosis may come up during times of extreme stress, a major lack of sleep, or trauma. People who are using or withdrawing from certain drugs or medications may experience psychosis. Psychosis may also be caused by a brain injury, neurological problem, or other health problem. So while psychosis can be a part of schizophrenia, it can be caused by many other things too.
     Psychosis and schizophrenia are treatable. It’s important to seek help as soon as possible.
    """

    let a89 =
     """
     Positive and negative symptoms are medical terms for two groups of symptoms in schizophrenia.
     Positive symptoms add. Positive symptoms include hallucinations (sensations that aren’t real), delusions (beliefs that can’t be real), and repetitive movements that are hard to control.
     Negative symptoms take away. Negative symptoms include the inability to show emotions, apathy, difficulties talking, and withdrawing from social situations and relationships.
     There is also a third group of symptoms, usually called cognitive symptoms. This includes anything related to thinking, such as disorganized thoughts, memory problems, and difficulties with focus and attention.
    """

    let a90 =
     """
     Prodrome is a medical term for early signs or symptoms of an illness or health problem that appear before the major signs or symptoms start.
     Psychosis, a group of symptoms found in disorders like schizophrenia, is one illness with a specific prodrome. With psychosis, prodrome signs and symptoms start before full symptoms like hallucinations and delusions appear.
     Common symptoms in the prodrome of psychosis include:
     These symptoms are found in many other mental illnesses, so it isn’t always clear at the time if this is a prodrome of psychosis or schizophrenia or something else. It’s best to seek help whenever you are concerned about your mental health or a loved one’s mental health. Psychosis and schizophrenia are much easier to manage and treat when treatment starts early.
    """

    let a91 =
     """
     While we think of attention-deficit/hyperactivity disorder as an illness that affects children, it can last into adulthood—and some people aren’t diagnosed until much later in life.
     ADHD is diagnosed like any other mental illness, so your family doctor is a good place to start. Your family doctor may be able to assess your mental health and start treatment, if needed, or they may refer you to more specialized mental health services.
     There are a few organizations that can help you find good resources and find some support:
     The Canadian Attention Deficit Hyperactivity Disorder Resource Alliance (CADDRA) is an organization that supports health professionals who research ADHD, treat and support people diagnosed with ADHD, and trains professionals. In the ‘Public Info’ section of their website, you’ll find more information on adult ADHD and the assessment process. You’ll also find extensive resources and recommended publications.
     The Centre for ADHD Awareness, Canada provides education and advocacy for Canadians who experience ADHD. They have a section on their website for adults, including information on symptoms and assessments, treatments, ADHD in the workplace, resources, and a reading list.
     CHADD Vancouver offers a monthly support group for adults in the Vancouver area.
    """

    let a92 =
     """
     People tend to use the word “addiction” to mean very different things. “I am addicted to shopping” might mean only that the speaker likes to shop. On the other hand, “He is addicted” might mean the speaker thinks the other person is completely unable to control his own behaviour. When people use the word about psychoactive (mind-altering) substances like alcohol, tobacco, or other drugs, they often assume these drugs are dangerous and have the power to control human behaviour.
     The evidence, however, suggests a quite different picture. While substance use can clearly contribute to health and social problems, substances can be beneficial for some people in some situations. Many people celebrate a special occasion with a nice glass of wine, for example. Some people use tobacco as a powerful symbol in cultural and spiritual ceremonies. In fact, substances have been used by humans throughout history for many reasons: to feel good, to feel better, to improve performance, for cultural/spiritual reasons, and to have new experiences.
     Substance use is more complicated than just “good” or “bad.” It’s helpful to think of substance use along a continuum, from beneficial use to harmful use. Along the middle of the continuum, substance use may be both beneficial and harmful. You have an enjoyable night out with friends, but feel a little ill the next day. At the far end of the continuum, some people develop dependence—they need to continually use the drug in order to feel normal and will keep using even when that leads to financial difficulties, problems at home or at work, health problems, or legal problems.
     In general, substance use is a problem when it causes problems for you or others—and how much use causes problems will be different for different people in different situations. The reason a person uses a substance influences the risk of developing problems. For instance, if a person uses a substance to have fun, only occasional social use may follow. But when a person uses a substance to cope with a long-term problem such as social anxiety, then more long lasting and intense use may follow. Managing our risk involves being aware of why we are using and what impacts our use is having on ourselves and those around us. The wisdom of our ancestors suggests a guiding principle—not too much, not too often, and only in safe contexts.
    """

    let a93 =
     """
     Seeking to make changes in the way you use substances like alcohol or other drugs? This can be an important step!
     Some people are able to reduce their substance use or quit altogether on their own or with self-help materials. But most of us need support from other people—family members, friends, health professionals, or other people struggling with substance use problems. The right help for you depends on many factors. These include the type of drug you are using, how much and how often, your health and social situation and, of course, your own preferences. Getting help doesn’t mean giving up control of shaping your own path. You are still the one who makes the final decisions about the type and degree of change you make.
     One way to get help is to talk to a doctor you trust and feel comfortable confiding in. If you aren’t comfortable talking in person, you can also get advice from a registered nurse (along with advice on programs or services in your area) by calling HealthLink BC at 8-1-1. Since some drugs are illegal, many people worry about what might happen if they talk about drug use. It’s important to know that in most cases, doctors have to protect your privacy—it’s the law.
     In BC, the Alcohol and Drug Information Referral Service can help you find information on treatment options, support groups and other resources throughout the province. It’s free, confidential, and available 24/7. Call the Alcohol and Drug Information Referral Service at 1-800-663-1441 or 604-660-9382 in the Lower Mainland.
    """

    let a94 =
     """
     Sorting out if you are drinking too much can be complicated. You are unique and your relationship with alcohol is unique. No one has the same combination of life experiences and influences that you do. So even though you and your friend may choose to drink, how and why you use alcohol may be different.
     Those of us who drink, seek benefits from alcohol, not difficulties. But sometimes we start using more, and more often, than makes sense. As a general rule, drinking alcohol becomes a problem when it negatively affects our life or the lives of others. Many people imagine this refers to people who consume alcohol “all day every day.” But even drinking too much on a single occasion can lead to a problem, for instance making a poor decision such as driving while impaired.
     What’s also important to recognize is the potential for negative consequences related to drinking in various contexts (i.e., places, times and activities) and over time (e.g., coping with chronic problems). You can get personalized feedback related to your pattern of drinking as compared to Canada’s Low-Risk Alcohol Drinking Guidelines via the Alcohol Reality Check screening app. This short, simple screen can be used by people of all ages.
     All alcohol use involves some risk. The reasons people use alcohol can influence their risk of developing problems. For instance, if a person uses alcohol to enhance special celebrations, only occasional social use may follow. But when a person drinks to cope with a long-term problem such as social anxiety, then more long lasting and intense use may follow.
     By reflecting on your pattern of drinking you can manage your risk for immediate injury or death, your chances for long-term health consequences such as cancer or heart disease, and your risk of developing habitual patterns of drinking that may lead to these harms.
     Whenever you decide to drink alcohol, it is helpful to know what steps you can take to ensure that your drinking behaviour is the most rewarding and least harmful possible. The following are some useful guidelines to consider.
     Not too much. Managing how much you drink on a given occasion helps decrease risky behaviours.
     Tip: Drink slowly and alternate between non-alcoholic and alcoholic beverages.
     Not too often. Drinking in moderation helps to reduce harms to ourselves and others over time.
     Tip: Keep less alcohol at home and set limits on how much you are going to drink each week, avoiding drinking on some days.
     Only in safe contexts. Making informed decisions about where you drink helps to minimize alcohol-related harm.
     Tip: If going to a bar, stay with a group and choose an establishment that is well lit and near safe transportation options.
     For information on treatment options and resources throughout BC, call the Alcohol and Drug Information Referral Service at 1-800-663-1441. In Greater Vancouver, call 604-660-9382.
     To better understand how substances play a role in your life, visit the You and Substance Use workbook on the HeretoHelp website.
     The Canadian Institute for Substance Use Research, formerly CARBC, is a member of the BC Partners for Mental Health and Addictions Information. The institute is dedicated to the study of substance use in support of community-wide efforts aimed at providing all people with access to healthier lives, whether using substances or not. For more, visit www.cisur.ca.
    """

    let a95 =
     """
     Cannabis smoke, for example, contains cancer-causing toxins. However, the risk of developing some cancers (e.g., mouth, tongue and lung) is less for cannabis smokers than tobacco smokers, partly because they tend to smoke less than tobacco users. And, while all drugs have an effect on the brain, the particular properties of the drug influence the level of risk of harmful consequences. The negative effects of cannabis on the brain, for example, seem to be less than the effects of some substances such as alcohol.
     Legalizing cannabis provides an opportunity to put in place regulations to minimize potential harms. The danger of buying and using any illegal drug is that we can never know for sure what exactly is in it. Cannabis is legal in Canada as of October 17, 2018. Adults (over age 19 in BC) are now permitted to possess up to 30 grams of cannabis in public. Cannabis is regulated by the Province of British Columbia and will be sold through the Liquor Distribution Branch. Cannabis will be tested for quality.
     When drugs are produced and obtained inside a regulated system, it is possible for us to know about the contents and dosage of what we are taking. This helps us manage the risks. However, it is likely that cannabis will still be available outside the government system. It is important to know that the quality of cannabis obtained from a dealer or a friend is unknown and may contain contaminants like mold, mildew, or fillers that may be toxic.
     The legalization of cannabis also provides us with openings to engage in honest and thoughtful discussions about drug use with our families and communities. When dealing with complex issues, like cannabis policy, no one has all the answers. But as community members, we all have thoughts, feelings and experiences around drugs and drug use to share with each other. Engaging together to explore and share ideas will help us discover how to manage use, as individuals and communities, in ways that maximize benefit and minimize harm.
     The Canadian Institute for Substance Use Research, formerly CARBC, is a member of the BC Partners for Mental Health and Addictions Information. The institute is dedicated to the study of substance use in support of community-wide efforts aimed at providing all people with access to healthier lives, whether using substances or not. For more, visit www.cisur.ca.
    """

    let a96 =
     """
     You can't. But you can influence their capacity to make good choices in a world where alcohol and other drugs are available. It's about helping your child develop the skills to assess what might be helpful in achieving their goals in life. It's also about nourishing a supportive relationship, so they know where to go with questions or problems.
     Opening up a discussion about drugs can help strengthen your relationship with your child. Inviting and allowing open, honest conversation about drugs (or any other subject) makes your child know that what they are thinking, feeling and experiencing matters to you. The goal is to get your child talking and sharing their thoughts and feelings.
     When young people are asked thoughtful, open-ended questions exploring what they think, it helps them become interested in their own thoughts and behaviour. This process of self-reflection is part of developing critical thinking skills, a part of good decision-making. Critical thinking skills are actually an essential part of reducing the risks related to using drugs. Once young people have considered something carefully, they are a lot less likely to act out of impulse or in response to influence.
     There is no rule about how or where a conversation about alcohol or other drugs should start. Even young children know drugs are a part of our culture. They see people drinking around them and are exposed to drugs on TV and in advertising. This makes it a subject that can be brought up naturally while getting ready for a family celebration where alcohol will be present, or if you are planning to visit a relative who uses tobacco, or while swapping stories at the dinner table about what happened at work and school that day.
     Talking with teens and young adults about drugs as they make choices on the path into adulthood helps them to develop personal standards, minimize risks and critically assess popular beliefs about drug use. This can be particularly important as they transition to the legal age for using alcohol or cannabis and move out of the family home. While young adults have more independence and more legal rights, parents can continue to be an important sounding board on which to try out their thoughts and ideas.
     The Canadian Institute for Substance Use Research, formerly CARBC, is a member of the BC Partners for Mental Health and Addictions Information. The institute is dedicated to the study of substance use in support of community-wide efforts aimed at providing all people with access to healthier lives, whether using substances or not. For more, visit www.cisur.ca.
    """

    let a97 =
     """
     Cannabidiol or CBD is a naturally occurring component of cannabis. It is extracted from the cannabis plant and often made into an oil for use. CBD is not psychoactive, and does not produce the ‘high’ of THC (tetrahyrocannabinol), the primary psychoactive component of cannabis. CBD is legal in Canada and has been used in the treatment of various medical conditions.
     All cannabinoids, including CBD, produce effects in the body by attaching to certain receptors in the brain or immune system. The human body also produces its own cannabinoids. It seems that CBD does not attach directly to receptors. Instead, it directs the body to use more of its own cannabinoids to produce the therapeutic effects associated with CBD.
     Research suggests that CBD may provide relief for chronic pain. Sativex is a proprietary medication that combines THC and CBD and may be prescribed for the relief of pain associated with multiple sclerosis. There is also some evidence suggesting that CBD may be a promising support for people with opioid use disorders. The researchers noted that CBD reduced some symptoms associated with substance use disorders including anxiety, mood-related symptoms, pain, and insomnia.
     After researching the safety and effectiveness of CBD oil for treating epilepsy, in 2018, the United States FDA approved CBD (Epidiolex) as a therapy for two rare conditions characterized by epileptic seizures. Other evidence suggests that CBD may be useful in the treatment of schizophrenia, though further research is needed before introducing CBD into medical practice.
     There is some initial evidence that CBD may help people in the early stages of Alzheimer's disease keep the ability to recognize the faces of people that they know, and thus slow progression of the illness. Again, more research is needed in this area.
     Because of the way cannabis and its products are metabolized, scientists believe there is a potential for interaction with other drugs, although nothing significant has yet been recorded. CBD has been found to be generally safe. Reports from patients indicate that negative drug interactions are not common. As with any other treatment, it is important to monitor your use of CBD and seek assistance if you experience any problems or have questions or concerns about its use.
     The Canadian Institute for Substance Use Research, formerly CARBC, is a member of the BC Partners for Mental Health and Addictions Information. The institute is dedicated to the study of substance use in support of community-wide efforts aimed at providing all people with access to healthier lives, whether using substances or not. For more, visit www.cisur.ca.
    """

    let a98 =
     """
     "Vaping" is the term for using a device where liquids, often flavoured, are turned into vapour (hence, vaping) and inhaled. A vaping device consists of a mouthpiece, tank or reservoir to hold the liquid, a heating element and a battery to power the element. The liquid is heated to become a mist, inhaled through the mouth into the lungs where the nicotine or cannabis enters the bloodstream. Any residual vapour is exhaled. Vaping devices come in several types, shapes, and sizes, referred to as e-cigarettes, vape pens, vapes, mods, tanks, or e-hookahs. Vaping liquid (e-liquid, e-juice) consists of a solvent, usually propylene glycol or glycerol, flavour, and nicotine or cannabis, though it may not contain anything. In British Columbia you must be 19 years old to buy vaping products.
     The number of young people who smoke cigarettes has declined over the past few years, while vaping has increased. E-cigarettes were developed as an alternative to smoking. The first devices were available in 2003 and looked much like a traditional cigarette. Nicotine vapour contains significantly fewer toxins and other particles than smoke from cigarettes. Vaping is a less harmful alternative to cigarettes and evidence suggests, it may help some people quit smoking. Evidence suggests vaping is likely not a gateway to smoking tobacco.
     Though less harmful than smoking cigarettes, vaping still carries potential harms. There is a small exposure to nicotine and possible carcinogens in the vapour. (A carcinogen is a substance that has the potential to cause cancer). Some evidence suggests that young people may be unaware the vaping liquid often contains nicotine. E-cigarettes are not controlled and the nicotine content of vaping liquids varies significantly among brands. Other chemicals, flavourings, and heavy metals present in vaping liquids, have not as yet been well studied. Long-term health risks from vaping are thus undetermined. More research is needed in these areas.
     Marketing strategies for vaping products, often on social media, are designed to appeal to young people. The range of flavours available, especially those that are fruity and sweet, and the look and feel of vaping devices attract youth. Young people can see vaping as fun and a way to socialize with friends and 'smoke' in a less harmful way.
     Making the time and space for discussion and exploring the issues around vaping is one important way we can support young people and indeed, each other, in making good decisions about if, when, or how much to vape. We offer, "not too much, not too often, and in a safe context" as one way to think about using any substance. What this means to you may be a place for talking to start!
     The Canadian Institute for Substance Use Research, formerly CARBC, is a member of the BC Partners for Mental Health and Addictions Information. The institute is dedicated to the study of substance use in support of community-wide efforts aimed at providing all people with access to healthier lives, whether using substances or not. For more, visit www.cisur.ca.
    """

    let q1 = "What does it mean to have a mental illness?"

    let q2 = "Who does mental illness affect?"

    let q3 = "What causes mental illness?"

    let q4 = "What are some of the warning signs of mental illness?"

    let q5 = "Can people with mental illness recover?"
    let q5a = "Are mentally sick individuals capable of recovery?"

    let q6 = "What should I do if I know someone who appears to have the symptoms of a mental disorder?"

    let q7 = "How can I find a mental health professional for myself or my child?"

    let q8 = "What treatment options are available?"

    let q9 = "If I become involved in treatment, what do I need to know?"

    let q10 = "What is the difference between mental health professionals?"

    let q11 = "How can I find a mental health professional right for my child or myself?"

    let q12 = "If I become involved in treatment what do I need to know?"

    let q13 = "Where else can I get help?"

    let q14 = "What should I know before starting a new medication?"

    let q15 = "If I feel better after taking medication, does this mean I am \"cured\" and can stop taking it?"

    let q16 = "How can I get help paying for my medication?"

    let q17 = "Where can I go to find therapy"

    let q18 = "Where can I learn about types of mental health treatment?"

    let q19 = "What are the different types of mental health professionals?"

    let q20 = "Where can I go to find a support group?"

    let q21 = "Where can I go to find inpatient care?"

    let q22 = "Where can I go to find other local services?"

    let q23 = "Where can I learn more information about clinical trials?"

    let q24 = "Where can I learn more information about creating a Psychiatric Advance Directive?"

    let q25 = "What is mental health?"

    let q26 = "What do I do if the support doesn’t help?"

    let q27 = "Can you prevent mental health problems?"

    let q28 = "Are there cures for mental health problems?"

    let q29 = "What causes mental health problems?"

    let q30 = "What do I do if I’m worried about my mental health?"

    let q31 = "How do I know if I’m unwell?"

    let q32 = "What should I do if I’m worried about a friend or relative?"

    let q33 = "How do I deal with someone telling me what to do?"

    let q34 = "Why do I need to keep informed?"

    let q35 = "How can I tell if health information is good or bad?"

    let q36 = "Why do I need a plan?"

    let q37 = "How can I maintain social connections? What if I feel lonely?"

    let q38 = "How can I take care of my physical health?"

    let q39 = "How can I use distraction to manage difficult thoughts or feelings?"

    let q40 = "How can I reframe the situation and find more balanced perspectives?"

    let q41 = "How can I challenge thinking traps?"

    let q42 = "How can I manage grief?"

    let q43 = "How can I find a doctor, psychiatrist, psychologist, or counsellor?"

    let q44 = "How can I see a psychiatrist?"

    let q45 = "How can I see a psychologist?"

    let q46 = "How can I see a counsellor?"

    let q47 = "How can I find a support group?"

    let q48 = "Where can I find child and youth mental health services?"

    let q49 = "Where can older adults find help for mental health concerns?"

    let q50 = "Where can I find self-help materials for depression?"

    let q51 = "Where can I find self-help materials for anxiety?"

    let q52 = "I’m having a hard time coping with a physical health problem. Where can I find help?"

    let q53 = "When is substance use a problem? Where can I go for help?"

    let q54 = "Where can I find free or low-cost counselling?"

    let q55 = "Can I get help paying for prescription medications?"

    let q56 = "How can I pay for mental health care?"

    let q57 = "How do I apply for income assistance?"

    let q58 = "What is MSP?"

    let q59 = "What is a referral?"

    let q60 = "What's the difference between a psychiatrist and a registered psychologist?"

    let q61 = "What's the difference between psychotherapy and counselling?"

    let q62 = "What's the difference between CBT and DBT?"

    let q63 = "What's the difference between antidepressants?"

    let q64 = "I received a diagnosis but I don’t think it’s right. What can I do?"

    let q65 = "I was prescribed an antidepressant or other psychiatric medication but I don’t think it’s working. What can I do?"

    let q66 = "An adult in my life seems ill and won’t find help. What can I do?"

    let q67 = "I’m worried about my child or teenager. Where can I find help?"

    let q68 = "Someone I care about has a brain injury. Where can I find more information?"

    let q69 = "Someone I love has been diagnosed with depression. How can I help?"

    let q70 = "Someone I love has been diagnosed with schizophrenia. How can I help?"

    let q71 = "I’m a young person and one of my parents has a mental illness. What can I do?"

    let q72 = "I have thoughts of suicide, or someone I care about is talking about suicide. What should I do?"

    let q73 = "Cannabis is legally allowed to 19+ but there are doctor groups saying it’s potentially harmful to age 25. Any use or certain use? What’s myth and what’s fact? If I’m a parent, what should I tell my young adult?"

    let q74 = "What's the difference between mental health and mental illness?"

    let q75 = "Where can I find more information about depression?"

    let q76 = "What’s the difference between anxiety and an anxiety disorder?"

    let q77 = "What's the difference between anxiety and stress?"

    let q78 = "What's the difference between sadness and depression?"

    let q79 = "What is dysthymia or persistent depressive disorder?"

    let q80 = "What is cyclothymic disorder?"

    let q81 = "What does rapid cycling mean?"

    let q82 = "Where can I find information and help for borderline personality disorder?"

    let q83 = "What is schizoid personality disorder?"

    let q84 = "What is antisocial personality disorder?"

    let q85 = "What is obsessive-compulsive personality disorder?"

    let q86 = "What is binge-eating disorder?"

    let q87 = "What’s the difference between dissociative identity disorder (multiple personality disorder) and schizophrenia?"

    let q88 = "What's the difference between psychosis and schizophrenia?"

    let q89 = "What are positive and negative symptoms?"

    let q90 = "What is a prodrome?"

    let q91 = "I’m an adult and I think I might have ADHD. What can I do next?"

    let q92 = "What’s the difference between substance use and addiction?"

    let q93 = "How can I find help for an alcohol or drug use problem?"

    let q94 = "How do I know if I'm drinking too much?"

    let q95 = "If cannabis is dangerous, why are we legalizing it?"

    let q96 = "How can I convince my kids not to use drugs?"

    let q97 = "What is the legal status (and evidence) of CBD oil?"

    let q98 = "What is the evidence on vaping?"
    
}


