// Glossary definitions — imported by main.typ, abbreviations.typ, and concepts.typ

// ─── Abbreviations / Acronyms ────────────────────────────────────────────────
#let abbreviation-list = (
  (key: "ai",    short: "AI",    long: "Artificial Intelligence"),
  (key: "cvtl",  short: "CVTL",  long: "Cruz Vermelha de Timor-Leste"),
  (key: "dt",    short: "DT",    long: "Disenfranchising Talk"),
  (key: "icrc",  short: "ICRC",  long: "International Committee of the Red Cross"),
  (key: "ifrc",  short: "IFRC",  long: "International Federation of Red Cross and Red Crescent Societies"),
  (key: "ingo",  short: "INGO",  long: "International Non-Governmental Organisation"),
  (key: "km",    short: "KM",    long: "Knowledge Management"),
  (key: "llm",   short: "LLM",   long: "Large Language Model",  plural: "LLMs", longplural: "Large Language Models"),
  (key: "ngo",   short: "NGO",   long: "Non-Governmental Organisation"),
  (key: "oecd",  short: "OECD",  long: "Organisation for Economic Co-operation and Development"),
  (key: "tcd",   short: "TCD",   long: "Theory of Communicative Disenfranchisement"),
  (key: "un",    short: "UN",    long: "United Nations"),
  (key: "usaid", short: "USAID", long: "United States Agency for International Development"),
)

// ─── Key Concepts / Definitions ──────────────────────────────────────────────
#let concept-list = (
  (
    key: "accountability",
    short: "Accountability to Affected Populations",
    description: [The commitment of humanitarian actors to be answerable to the people they serve, ensuring that communities have a voice in decisions affecting them and can provide feedback or lodge complaints.],
  ),
  (
    key: "beneficiaries-versus-providers",
    short: "Beneficiaries versus Providers",
    description: [A dichotomy perpetuated by the aid industry where relations only exist between beneficiaries---receivers of resources---and providers---givers of resources; "beneficiaries" are often treated as numerical targets beholden to the priorities and conditions of "providers" @khanHowWeClassify[p. 3].],
  ),
  (
    key: "bureaucratization-of-knowledge",
    short: "Bureaucratization of Knowledge",
    description: [Dr. Arturo Escobar's term identifying the practices of institutions in professionalizing discourses about the 'Third World' into standardized, manageable, and technical categories; in this case study, concerns the standardization and technocratization of knowledge through formal reporting requirements, whereby complex local realities are reduced to quantifiable metrics and donor-defined "client categories" @escobarEncounteringDevelopment[p. 106].],
  ),
  (
    key: "communicative-disenfranchisement",
    short: "Communicative Disenfranchisement",
    description: [The process by which communication results in the deprivation of a person's rights and privileges; in the humanitarian sector, this manifests as the marginalization of local workers in knowledge production @hintzsharpeTCD.],
  ),
  (
    key: "custodians-of-comprehension",
    short: "Custodians of Comprehension vs. Catalysts for Transformation",
    description: [A distinction by Indy Johar used to contrast workers reduced to form-filling compliance---"custodians"---with those empowered to create meaningful change---"catalysts" @JoharCatalyst.],
  ),
  (
    key: "decoloniality",
    short: "Decoloniality",
    description: [The theoretical and political project of dismantling the enduring colonial logics, epistemologies, and power structures that persist beyond formal political independence; premised on the recognition that coloniality---the ongoing suppression of local knowledges, languages, and beliefs in favor of Western frameworks---remains embedded in contemporary institutions @WDF2026, including in the humanitarian sector.],
  ),
  (
    key: "developed-versus-developing",
    short: "Developed versus Developing Countries",
    description: [Originating in the 1960s for the transfer of resources from economically rich to poor nations, this term implies that "developed" countries have reached their full potential and suggests there is only one universal way to be developed @khanHowWeClassify[p. 2].],
  ),
  (
    key: "developmentalism",
    short: "Developmentalism",
    description: [The pursuit of economic growth and "the distribution of the benefits of growth" to "solve the social and economic problems of these parts of the world" classified as "Third World"/"developing nation"/Global South @escobarEncounteringDevelopment[p. 5]; formulated upon the "spatial power" from the division of "imaginative geographies" (Said as cited by #cite(<escobarEncounteringDevelopment>, form: "author"), #cite(<escobarEncounteringDevelopment>, form: "year"), p. 9) where nations are labeled "First and Third World, North and South, center and periphery" @escobarEncounteringDevelopment[p. 9] and these "forms of power in terms of class, gender, race, and nationality thus found their way into development theory and practice. The former do not determine the latter in a direct causal relation; rather they are the development discourse's formative elements" @escobarEncounteringDevelopment[p. 43]; prioritization of "Western-style democracy as the end point of development" resulting in an "emphasis on the immediate need for order and efficiency" @manzoModernist[p. 4] in the intervention and management of "developing" nations' political, economic, and cultural affairs.],
  ),
  (
    key: "documentary-reality",
    short: "Documentary Reality",
    description: [A term coined by Dr. Dorothy Smith referring to the institutional reliance on textual and documentary forms as a means of representing reality, inevitably detached from the local historical context of the experiences they purport to represent @escobarEncounteringDevelopment[p. 146].],
  ),
  (
    key: "do-no-harm",
    short: "Do No Harm",
    description: [A foundational principle requiring that interventions---including technological ones---must not cause unintended harm to affected populations. Derived from medical ethics and formalised in humanitarian practice.],
  ),
  (
    key: "epistemological-chauvinism",
    short: "Epistemological Chauvinism",
    description: [Anthropologist John Bousfield's term for the privileging of Western 'scientific' knowledge as inherently superior to local, tacit, or oral knowledge @sillitoeetalParticipatingDevelopmen[p. 240]; the ideological foundation that dismisses local expertise as anecdotal or unreliable; epistemological, as defined by Hintz and Sharpe, as "concerned with the recognition of knowledge" as well as "what counts as knowledge, and whose knowledge counts" @hintzsharpeTCD[p. 91].],
  ),
  (
    key: "first-world-versus-third-world",
    short: "First World versus Third World",
    description: [A post-WW2 theoretical classification embedded with racism through hierarchy, structured around the "backwardness" of the "Third World" @khanHowWeClassify[p. 2] and the superiority of the "First World"; a structure treating the "individual nation-state in the Third World as the sovereign subject of development" @manzoModernist[p. 3].],
  ),
  (
    key: "global-north-versus-global-south",
    short: "Global North versus Global South",
    description: [Emerging in the 1980s, these terms indicate divisions based on access to wealth, political power, and participation in Western culture. Despite being geographically inaccurate---with countries like Australia falling under the classification of Global North despite existing geographically in the southern hemisphere---these terms are less problematic in comparison to other "dichotmous terminologies" used in the humanitarian and development sectors @khanHowWeClassify[p. 2] but continue to perpetuate the "social production of space implicit in these terms" "bound with the production of differences, subjectivities, and social orders" @escobarEncounteringDevelopment[p. 9] through "imaginative geographies" (Said as cited by #cite(<escobarEncounteringDevelopment>, form: "author"), #cite(<escobarEncounteringDevelopment>, form: "year"), p. 9).],
  ),
  (
    key: "goal-coded-systems",
    short: "Goal-Coded Systems",
    description: [A concept from Indy Johar describing systems whose operative purpose arrives from outside---prompted, benchmarked, and evaluated by external frames---leading to a "crisis of orientation" for those operating within them @JoharGoalCodedSystemsCrisis.],
  ),
  (
    key: "humanitarian",
    short: "Humanitarian",
    description: [A person engaged in efforts to "prevent and alleviate human suffering", particularly "in times of armed conflict and other emergencies" @IFRCprinciples[p. 2].],
  ),
  (
    key: "humanitarian-principles",
    short: "Humanitarian Principles",
    description: [The four core principles guiding humanitarian action: humanity, neutrality, impartiality, and independence. Established by the International Committee of the Red Cross and endorsed by the United Nations.],
  ),
  (
    key: "indigenous",
    short: "Indigenous",
    description: [Historically belonging to the location in question; in the context of this thesis, "To avoid incessant definitional arguments, most anthropologists now use local knowledge (LK) and traditional knowledge (TK) as synonymous with indigenous knowledge (IK)" @sillitoeetalParticipatingDevelopmen[p. 27].],
  ),
  (
    key: "local-versus-international",
    short: "Local versus International",
    description: [Within the aid industry, "international" is used to refer to organizations and institutions overseeing projects across the world but often based in the Global North and "local" often concerns an entity located in the Global South. While perhaps technically accurate, racial connotations may be carried when in reference to people and capacity: "'local' often has derogatory connotations (eg, a local working in their 'poor' country is juxtaposed with and considered inferior to the 'expat' or international expert from a rich country" @khanHowWeClassify[p. 2].],
  ),
  (
    key: "localization",
    short: "Localization",
    description: [A donor-promoted concept referring to the promotion of decision-making power and resources to local organizations; critiqued in this thesis as largely rhetorical, undermined by the very reporting structures imposed on local 'partners'.],
  ),
  (
    key: "modernization",
    short: "Modernization",
    description: [The "adoption of the 'right' values, namely those held by the white minority... and, in general, those embodied in the ideal of the cultivated European" through political restructuring @escobarEncounteringDevelopment[p. 43], industrialization, and transformation of socio-cultural practices; entirely analogous with "conceptual categories and Western assumptions" @manzoModernist[p. 3].],
  ),
  (
    key: "myth-of-the-lazy-native",
    short: "Myth of the Lazy Native",
    description: [A concept from Dr. Syed Hussein Alatas describing the colonial ideology that portrayed native populations as lacking capacity and work ethic in order to justify exploitation and domination @alatasMythLazyNative --- a legacy argued to persist in current INGO paternalism toward organizations and humanitarians from the Global South.],
  ),
  (
    key: "ordered-bias",
    short: "Ordered Bias",
    description: [The structural tendency of standardised reporting systems to impose rigid, linear formats onto complex and context-specific knowledge, forcing nuanced field realities into pre-defined bureaucratic categories.],
  ),
  (
    key: "orientalism",
    short: "Orientalism",
    description: [Popularized by Dr. Edward W. Said, "a style of thought based upon an ontological and epistemological distinction made between 'the Orient' and (most of the time) 'the Occident'" @said1978orientalism[p. 10]; European imaginations of people, space, and power.]
  ),
  (
    key: "orientation-versus-agency",
    short: "Orientation versus Agency",
    description: [A distinction drawn by Johar where agency is the capacity to pursue an end, whereas orientation is the deeper capacity to discover, revise, and be claimed by what ends are worth pursuing @JoharGoalCodedSystemsCrisis. Local humanitarian workers are argued to be denied orientation by donor-driven goal-coded systems.],
  ),
  (
    key: "the-west-versus-the-east",
    short: "The West versus the East/the Rest/the Orient",
    description: [An ideological and hegemonic sociopolitical distinction that falsely touts human values like freedom and rationality as exclusively Western @khanHowWeClassify[p. 2].],
  ),
  (
    key: "white-gaze",
    short: "White Gaze",
    description: [A term used by Shallwani and Dossa to describe how Whiteness is established as the norm in development and humanitarian evaluation, determining what counts as valid knowledge and evidence while framing Global South populations in terms of deficit @EvaluationWhiteGaze.],
  ),
)

// ─── Combined list (used for register-glossary in main.typ) ──────────────────
#let entry-list = abbreviation-list + concept-list
