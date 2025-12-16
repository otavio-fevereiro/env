# contexto
você é um software engineer ic6 no nubank e esta respondendo self assesment, utilizeas regras:

- não utilize - nos textos
- utilizando uma linguagem natural.
- utilize ingles intermediario.
- utilize o meu brag document, feedbacks, letterd e os exemplos para montar a justificativa

# Self assesment
As perguntas são respondidas por multiplas escolha da qual ja respondi, para validar em que nivel o funcionario esta adequado a letter
Cada seção de peguntas tem um campo de justificativa que deve ser respondido em inglês, com no máximo de 900 caracteres.

## Seção 1 - Evaluate the WHAT expectations
- Is the level of AUTONOMY demonstrated in daily work in line with level and expectations?
- Is the level of COMPLEXITY demonstrated in daily work in line with level and expectations?
- Is the level of IMPACT demonstrated in daily work in line with level and expectations?

## Seção 2 - Evaluate the HOW expectations: Management & Influence Skills
- How would you evaluate “Organizational Influence” demonstrated?

## Seção  - Evaluate the HOW expectations: Skills and Behaviors
- How would you evaluate on “Communication”?
- How would you evaluate on “Strategic Acumen”?
- How would you evaluate on “Problem Solving”?
- How would you evaluate on “Project & Change Management”?
- How would you evaluate on “Stakeholder Relationship & Management”?
- How would you evaluate on "Software Development”?

## Seção 4 - Evaluate the HOW expectations: Values
- Is this Nubanker aligned with the value "We want our customers to love us fanatically"?
- Is this Nubanker aligned with the value "We think and act like owners, not renters"?
- Is this Nubanker aligned with the value "We build strong diverse teams"?
- Is this Nubanker aligned with the value "We pursue smart efficiency"?


## Exemplo de justificativas
- John showed autonomy by driving the launch of the new checkout flow end-to-end, reducing cart abandonment by 18% and exceeding the OKR of +10% conversion. He handled complex stakeholder alignment across engineering, design, and legal, ensuring delivery within deadline and budget. His roadmap prioritization contributed to a 12% uplift in NPS and accelerated time-to-market by 20%. Through structured data analysis, he identified key user pain points, resulting in two new features now adopted by over 60% of active users.
- Peter improved cross-team communication by leading weekly syncs, reducing misalignment incidents by 40%. His problem-solving skills were key during the checkout issue, where he proposed a solution adopted in less than 48h, avoiding ~$200K in lost revenue. His product sense guided the prioritization of the new mobile onboarding flow, which increased activation rate from 65% to 83%, directly supporting the company’s OKR of user growth.

# brag document
Context: Melhorias no serviço do ahorita - Now/Highlights
Ações: 
Playbook Ahorita Homepage Latency sobre alertas de latencia do ahorita
Remoção de exceptions desnecessários que gerava deadletter e tocavam alarme de madrugada
Produção de mensagens assíncronas evitando problemas de performance quando o cluster estava lento
Redirecionamento de deadletters para os produtores de mensagens
Impacto: Os alertas tocavam semanalmente, porém se resolviam rápido o que atrapalhava o dia a dia dos devs. Redução nos alertas flakes para quase zero.

Context: Handover Now, Highlights e Eligibility Provider
Ações: 
Criação de documentos
Explicação para times envolvidos
Auxilio no suporte
Auxílio na análise de novas features e implementação em outros países
Impacto:
Fizemos um handover controlado com zero incidentes.
Aceleração do time‑to‑market
Escalonamento internacional facilitado

Context: Global Search
Ações:
Lead do projecto
Tech assessment
Criação de Roadmap detalhado
Implementação de estrutura configurável para personalização
Entrega e acompanhamento do experimento
Investigação detalhada sobre o problema de latência de search-hub
Investigação das tabs pulando na home após abrir search
Impacto:  Vai permitir a melhora de findability de Magic APP

Context: Melhoria TTFD pix-dedicated-area
Ações:
Trabalho em conjunto com time de pix
Descoberta do time-to-interpret alto
Descoberta do motivo do ícone embed melhorou o ttfd
Descoberta da alteração do app em background aumenta o ttfd
Discovery prefetch do pix na home
Impacto: Melhora generalizada no TTFD

Context: Melhora time-to-render do joao-grilo.pix-area-suggestions
Ações:
Testes com client cache
Alteração no cache para 30 dias
Impacto: Redução no time-to-render da expressão em 33% - 1.2s para 800ms

Context: Idle time
Ações: 
Descoberto que o app tem estados que mantinham a métrica rodando impactando negativamente na métrica do TTFD
Implementado a o idle time que identifica quando o app está com status diferente de resumed e desconta isso do tempo total
Impacto: 
Redução de 1,4% no P90 no tempo total de TTFD
Redução de 24% no P99 no tempo total de TTFD

Context: Serviço Rosetta
Ações:
Async producer metric messages to kafka
Impacto: 
Redução de 80% no P99 de latência no /api/images, P99 baixo de 10ms
Redução 60% no P50  de latência no /api/images 

Context: General TTFD reduction
Ações: 
Suporte ao times externos
Suporte ao time interno focado em mobile, atuando de maneira horizontal apoiando em menor intensidade o time de performance de backend.
Discovery de ícones tem um performance melhor
Discovery que múltiplos bdc-widgets tem impacto no TTFD
Discovery de impacto de cache
Impacto: TODO
64% para 69% de TTFD abaixo de 1s
TTFD P90 de 2.7 para 2.2s
Reduçao de 50% no tempo do ttfd total


# Leveling IC6
Autonomy
IC6
Manage projects or processes while working independently, receiving timely managerial support.

N/A
Select function and level

Complexity
IC6
Address difficult and complex/ambiguous problems that require coordination across various subjects and stakeholders.

Ownership typically spreads across several teams and business units, necessitating collaborative efforts and sophisticated problem-solving skills.

N/A
Select function and level

Impact
IC6
Develop and deliver innovative solutions that address team-level or project-level challenges, focusing on medium-term impact.

Actively participate in cross-functional collaborations and begin to set standards within their project or team, inspiring peers to raise their performance

Function Contribution (Tech functions only)
-Mandatory activities like hiring, along with recommended taskforce participation, demonstrate a shift towards leadership and mentorship. Individuals at this level are expected to actively contribute to the function's growth and development.

N/A
Select function and level

MANAGEMENT

Defines the leadership attributes required to perform as Senior ICs and Managers.


Management
Organizational Influence
Exhibit strong leadership skills, confidently leading complex projects with ambiguity and requiring strategic thinking.

Lead complex and challenging projects, often with cross-functional teams and significant impact.

May lead a pack, squad, or process, providing mentorship and guidance to team members.

N/A
Select function and level

SKILLS

Defines the skills people use to set how to deploy daily duties.


General Skills
Project & Change Management
Intermediate
-Scoping & Design: Participates in defining the scope and design of solutions, identifying the key groups of people who will be affected by the change.
-Planning & Execution: Supports project planning and execution, developing a simple communication plan to keep stakeholders informed and escalating issues as needed.
-Monitoring & Iteration: Independently monitors implemented solutions, analyzing both performance data and user adoption metrics to propose adjustments.
-Value Realization & Adoption: Clearly articulates the business value of solutions and tailors the message to ease the transition for users, supporting adoption efforts.

N/A
Select function and level

Strategic Acumen
Experienced
-Critical Thinking & Business Drivers: Applies deep understanding of business drivers (e.g., market share, acquisition cost, operational efficiency) to evaluate options and recommend solutions that improve outcomes beyond their immediate team.
-Scenario Analysis: Integrates internal data and external market or competitor insights to anticipate risks and opportunities, proposing well‑reasoned, forward‑looking actions.
-Strategic Alignment: Shapes team planning by linking medium‑term objectives (e.g., next 6–12 months initiatives) to the broader organizational strategy and helping others align their work.
-Long‑Term Perspective & Decision Making: Makes decisions that balance short‑term priorities with medium‑term goals, anticipating cross‑team impacts and potential trade‑offs.

N/A
Select function and level

Communication
Experienced
-Clear Communication: Communicates complex messages clearly and persuasively, adjusting examples and depth of information to suit the audience.
-Promote understanding: Ensures understanding within the team and facilitates productive idea exchange in meetings by summarizing points and redirecting when needed.
-Listening: Listens with strong skills, focusing on content, acknowledging different views, and exploring others’ perspectives through thoughtful questions.
-Adaptability: Adapts communication style effectively to various environments and stakeholders, including those outside the immediate team and across cultures.

N/A
Select function and level

Problem Solving
Intermediate
-Problem Analysis: Analyzes more expanded issues with some autonomy, breaking them down into manageable parts and identifying which factors are most relevant.
-Root Cause Analysis: Uncovers root causes of moderately difficult problems, documenting findings clearly and seeking guidance on more ambiguous aspects.
-Solution Development: Develops effective solutions for moderately complex problems, testing and iterating based on feedback while considering practical constraints.
-Decision Making: Independently evaluates pros and cons, risks, and benefits of different solution options and explains the reasoning behind their preferred choice.

N/A
Select function and level

Stakeholder Relationship & Management
Intermediate
-Stakeholder analysis: Identifies key stakeholders needed to achieve project objectives, navigating effectively in a team environment with multiple contributors or workstreams, with some autonomy.
-Productive Relationships: Consistently establishes productive relationships with stakeholders across their own team and others, through trust and reliability, with some autonomy.
-Stakeholder strategy: Understands the requirements, expectations, and needs of internal stakeholders and addresses them effectively, with some autonomy.
-Stakeholder management: Is able to manage stakeholder communications and expectations on routine matters with increasing independence.

N/A
Select function and level


Function Skills
Software Development
Expert
-Scope Complexity: Plan, execute and lead – or otherwise are key contributors – to projects on the team level
-Technical Leadership: Responsible for technical guidance in the team, anticipating technical and product issues and making the appropriate design decisions to avoid them.
-Influence through technology: Influence business prioritization and peers outside their team to drive the evolution of Nubank's technical landscape, ensuring the adoption of canonical approaches and avoiding reinventing the wheel.
-Technical surface: Possess deep technical and domain expertise on the systems and business context of their team. They consistently reduce the complexity of projects, systems and processes to get more done with less work.

# feedbacks

## primeiro
Você tem uma comunicação muito calma, clara e objetiva. Sinto-me à vontade para compartilhar problemas e ideias com ele porque sei que minha opinião será levada em consideração. Um exemplo que me marcou foi no início da taskforce, quando todas as pessoas ainda estavam um pouco perdidas: você tomou a iniciativa de marcar pairs para apresentar possibilidades e alinhar direcionamentos, ouviu as ideias do time e iterou junto, contribuindo muito para criarmos um entendimento comum. 
Sua disponibilidade e proatividade são excelentes — tanto nas reuniões quanto no engajamento nas threads do Slack. Percebo que você está sempre presente nas discussões importantes e disposto a ajudar rapidamente quando surge alguma dúvida ou impedimento. 
Sua capacidade de identificar problemas e gerar impacto com suas decisões é muito alta. Um exemplo marcante foi no início da investigação sobre o comportamento de TTFD em algumas telas: enquanto estávamos tentando entender o que acontecia, você trouxe o primeiro insight realmente relevante — a hipótese de que o contador de TTFD continuava rodando em segundo plano no app. Isso destravou grande parte da análise e abriu espaço para que pudéssemos aprofundar as investigações específicas nas APIs.

## segundo
We worked closely from early 2024 across Now/Highlights, Global Search, and the Canonical Platforms task force, so I’ve seen you in very different games. In short: your technical depth and range made you the team’s wildcard when it mattered most; your constructive questioning consistently pushed us toward real impact; and your biggest growth levers now are scaling your influence beyond the squad through senior peer networks and leaning into earlier, higher‑ambiguity strategy work.

Wildcard for the team. In Global Search, even without a public launch, the architecture you helped shape was what allowed us to get as far as we did with confidence on scalability and sound fundamentals. In the Navigation Performance/Canonical Platforms task force with Mobile Platform, you were central to several of the biggest wins and to turning tacit systems knowledge into shared, actionable understanding—from TTFD to how Rosetta really behaves in practice. Your ability to adapt quickly to unfamiliar domains, apply first‑principles thinking, and take calibrated risks is uncommon and has been a force multiplier for the team.

Constructive questioning that raises the bar. You consistently asked the kind of “are we solving the right problem?” questions that protect our focus and model healthy debate for the team. That helped us stop lower‑leverage work and re‑sequence for outcomes. When you propose solutions, you generally articulate risks and trade‑offs well; continuing to make the business framing explicit—how the proposal ties to team/BU goals and the medium‑term impact—will make those proposals land even more clearly with non‑engineering stakeholders. Your prioritization instincts are solid and increasingly oriented toward medium‑term leverage; keep making the “why this/why now” visible.

Analytical impact on app performance. Your analyses around app performance and TTFD directly helped the task force navigate signal from noise and choose bets that moved the metric. Beyond the numbers, the way you turned insights into shared language and tooling made the team faster and more confident.

Scaling your influence. The next unlock is to invest intentionally in relationships with senior ICs outside our squad and even outside GED/Digital Ecosystem — through mentorships or regular exchanges with Staff/Sr Staff engineers. That will expose you to alternative patterns and operating models you can import, and it will broaden the surface area where your ideas create leverage.

Operating in higher ambiguity. At your level, a lot of the work starts before the problem has a clean shape. Getting closer to earlier strategy discussions — even when the problem is messy and not primarily technical — is where you can help leadership reduce ambiguity for everyone. It’s also the muscle that sets you up for the next step: framing options, pressure‑testing assumptions, and integrating business/customer context with technical direction.

I’m excited about the impact you’ve had and the trajectory you’re on. If it’s helpful, I’m happy to support by connecting dots to the broader company strategy and by partnering on the ambiguity‑reduction side when you’re stepping into fuzzier spaces.

# terceiro
Bom dia Otávio, tudo bem contigo? 😊

Bom reservei um tempinho na minha agenda para responder os feedbacks, desculpe a demora em responder, caso ficou ansioso pela minha resposta. 🤗

Vamos lá!

Minha comunicação em reuniões, pairs e docs é clara e direcionada às necessidades das pessoas envolvidas? Tem um exemplo de algo que tenha te chamado atenção?

Bom primeiramente gostaria de salientar que gosto muito da forma que trabalha, atento, atencioso a detalhes e sempre buscando a melhor solução para os problemas.

Tenho muito a aprender contigo, pois tenho um perfil bastante executor e você presta atenção nos mínimos detalhes e isso tento aprimorar vendo o contexto que trabalha.

A sua comunicação é bem direta e acho bem legal como passa isso para nós, está sempre colocando o seu ponto de vista e isso é muito interessante visto que não há travas em relação a isso, quanto a relações interpessoais ou algo do gênero, visto que sempre procura o melhor para o produto e o cliente.

O único ponto que gostaria de salientar é que podemos fazer mais pairs, visto que as vezes que fizemos isso juntos saíram soluções e resultados muito bons.

Sei que é complicado, pois estamos distantes e às vezes é um pouco incômodo, mas acredito que vale a pena alguns momentos mês a mês para discutirmos isso juntos, fazermos algumas projeções ou até mesmo refinar soluções, como foi no caso do cache e do parallel images.

Sobre docs, é uma opinião minha que todos nós precisamos melhorar, até para o quesito de mostrar mais o nosso trabalho.

Compartilhar aprendizados e experiências, mostrar tudo o que fizemos para dentro de todo o Nubank.

Como avalia minha disponibilidade e proatividade para resolver problemas? Há algo que poderia mudar para facilitar nossa colaboração?

Sobre a disponibilidade e proatividade, acredito que tenho um perfil bastante proativo, pois sempre busca resolver problemas e buscar soluções para os problemas.

Acredito que poderia melhorar a comunicação, pois algumas vezes não fica claro o que está sendo feito ou como está sendo feito, e isso pode gerar algumas confusões.

Um detalhe bem importante no qual você foi crucial ali, foi na implementação do cache em que dividiu os wrappers em diferentes classes e isso tornou o código mais coeso.

Essa tua contribuição foi fundamental e gostei muito de ver como você fez isso, e gostaria de continuar fazendo isso juntos.

Quando enfrentamos problemas técnicos e operacionais, como você avalia minha capacidade de identificar causa raiz e propor soluções?

Nesse quesito, você tem 100% de fit, é excelente, pois sempre identifica a causa raiz e propõe soluções para os problemas.

Eu gosto de ir a fundo no problema, entender o que está acontecendo e como está acontecendo, e isso ajuda a identificar a causa raiz e propor soluções para os problemas.

Você faz isso com maestria, de forma calma e natural, e isso é muito importante para o sucesso de um projeto.

Em quais situações minhas decisões tiveram impacto positivo e onde você acha que poderia ter sido diferente?

São várias situações, o TTFD analyzer foi uma delas e achei incrível. Após isso, comecei a estudar a fundo ferramentas, me deu o insight dos guidelines e das práticas de design.

Outra situação foi a implementação do cache, foi uma grande surpresa, pois não tinha ideia de como fazer isso e você me deu o insight de como fazer isso.

O que poderia ser diferente, seria a frequência mesmo, colocarmos em prática o que podemos melhorar de código, discutirmos arquitetura juntos e design de software.

Além disso, documentar mais o nosso trabalho, compartilhar aprendizados e experiências, mostrar tudo o que fizemos para dentro de todo o Nubank.

## quarto
Tem sido uma experiência muito positiva trabalhar com você. Seu conhecimento técnico elevado é demonstrado de forma clara e objetiva. Você não se limita ao resultado final de uma implementação; vai além, buscando entender o "porquê" por trás dos resultados. Um exemplo claro disso foi a discussão sobre a utilização do Isolate, onde você ressaltou a importância de considerar os potenciais pontos negativos, como o alto consumo de bateria, o que é fundamental para construir resultados sólidos.

Além disso, você é uma pessoa aberta a discussões e muito atenta: você ouve, busca entender o problema e as propostas de solução, contribuindo sempre com uma opinião bastante construtiva. Sua disponibilidade foi constante sempre que precisei de ajuda para solucionar os desafios que estava enfrentando.

Sua contribuição para a resolução de problemas é sempre cirúrgica. Nas análises do download paralelo de imagens, por exemplo, você identificou rapidamente que a maior parte dos batches de download continha apenas uma imagem. Essa observação gerou insights valiosos para revisarmos todo o fluxo do Rosetta, e não apenas a parte do download.