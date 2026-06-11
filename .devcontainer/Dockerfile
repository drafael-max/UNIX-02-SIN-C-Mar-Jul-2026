# ============================================================================
# Course Dockerfile - Environment Blueprint
# ============================================================================
# [BHB Ch. 3] A Dockerfile contains declarative instructions that the Docker 
# engine processes sequentially to build an isolated file system image.
# A container is the active execution instance generated from this template.
#
# [BHB Ch. 3 - Layer Caching Principle] Every instruction (FROM, ENV, RUN) 
# creates a distinct read-only layer. Docker caches these layers. Instruction 
# order matters because modifying an early line invalidates the cache for all 
# subsequent layers, forcing a slow rebuild. Placing static definitions at the 
# top optimizes build performance.
# ============================================================================

# --- Block a & b: Base Image & Layering Logic ---
# [BHB Ch. 3] We pull the official 'kali-rolling' distribution as our base image. 
# This guarantees that our workspace inherits Kali Linux's specialized penetration 
# testing repository trees and kernel utilities natively.
FROM kalilinux/kali-rolling:latest


# --- Block c: Global Environment Variables Configuration ---
# [BHB Ch. 1 & Ch. 3] Declaring immutable environment variables exported to 
# the system shell environment, modifying global execution behaviors:
# 
# DEBIAN_FRONTEND=noninteractive -> Forces the APT package manager to run without
# user prompts or interactive dialogs, preventing build hangs in headless pipelines.
#
# LANG & LC_ALL=es_ES.UTF-8 -> Establishes the structural locale definitions.
# UTF-8 encoding ensures standard parsing of multi-byte characters and symbols.
#
# TERM=xterm-256color -> Informs terminal applications (like vim or htop) that the 
# host shell interface supports full 256-color map rendering.
#
# The trailing backslash "\" functions as a shell line-continuation token.
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color


# --- Block d: Pre-seeding Debconf Database for Wireshark ---
# [BHB Ch. 1] Pipe implementation ('|') redirects the standard output from echo 
# into the standard input of debconf-set-selections. This injects a pre-answered 
# configuration parameter into the debian package database, bypassing the interactive 
# setuid prompt during the tshark/wireshark installation phase.
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections

    
# --- Block e: Monolithic Multi-Package Provisioning Layer ---
# [BHB Ch. 3] Executing a unified, single RUN block enforces a monolithic layer allocation strategy.
# Splitting updates and installations across separate RUN commands leads to caching discrepancies 
# and severely bloated image sizes. The operational symbols and flags perform the following roles:
# '&&' -> [BHB Ch. 1] Logical AND conditional operator; executes the subsequent command only if the previous returns a 0 exit status.
# '\'  -> Shell line-continuation token used strictly for clean code layout and legibility.
# 'apt-get update' -> Synchronizes the local package indexing cache with the remote Kali Linux repository trees.
# 'apt-get install' -> Fetches, extracts, and maps the binary executables and their structural dependencies.
# '-y' -> Forces automatic affirmative input, bypassing interactive execution confirmations.
# '--no-install-recommends' -> Suppresses non-essential recommended packages to optimize filesystem overhead.
RUN apt-get update && apt-get install -y --no-install-recommends \
    \
    # === Core Shell Interfaces & Text Editors ===
    neovim \
    vim \
    zsh \
    bash-completion \
    \
    # === Text Stream Processors (4th Gen Utilities - BHB Ch. 2) ===
    # Fundamental toolsets used for pipeline filtering, pattern matching, and file transformations.
    perl \
    make \
    gawk \
    sed \
    grep \
    \
    # === UNIX System Utilities & Data Structure Parsers ===
    # coreutils houses core system binaries (like cat, cut, tr, head, and tail).
    # jq operates as a specialized command-line processor for structural JSON data parsing.
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    \
    # === Built-in Documentation Architecture (BHB Ch. 1) ===
    # Re-enabling manual pages omitted from the base cloud image to facilitate local command reference.
    man-db \
    manpages \
    manpages-posix \
    \
    # === Network Transport, Transport Security & VCS ===
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    \
    # === Static Analysis Linting ===
    # shellcheck performs automated static analysis on shell scripts to catch syntax faults.
    shellcheck \
    \
    # === Active Reconnaissance & Network Mapping ===
    # nmap and masscan drive high-speed target profiling, service fingerprinting, and port discovery.
    nmap \
    masscan \
    \
    # === Packet Sniffing & Traffic Interception ===
    # tcpdump and tshark capture raw network socket buffers directly from active network interfaces.
    tcpdump \
    tshark \
    \
    # === Socket Relays & Diagnostic Routing Tools ===
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    \
    # === Routing Anonymization & Traffic Obfuscation ===
    # tor routes operational streams across relays, while proxychains4 forces arbitrary socket calls through them.
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    \
    # === Human-Readable HTTP Evaluation Interface ===
    httpie \
    \

# --- Block f: Spanish Locale Generation ---
    # [BHB Ch. 2] Using 'sed -i' invokes the stream editor to systematically perform an 
    # in-place regex replacement inside '/etc/locale.gen'. It removes the comment prefix ('#') 
    # from the Spanish localization string. Subsequently, 'locale-gen' compiles the active 
    # binary definitions to properly support Spanish data characters inside the file system.
    && sed -i 's/# es_ES.UTF-8 UTF-8/es_ES.UTF-8 UTF-8/' /etc/locale.gen && locale-gen \
    \
    # --- Block g: Image Layer Cache Cleanup Optimization ---
    # [BHB Ch. 3] 'apt-get clean' flushes local package downloads from the cache directory, 
    # and 'rm -rf' recursively purges remote indexes under '/var/lib/apt/lists/*'. 
    # Doing this within the exact same RUN instruction guarantees that temporary metadata 
    # is never committed into the final image layer, dramatically stripping down final storage size.
    && apt-get clean && rm -rf /var/lib/apt/lists/*


# --- Block h: Instructional Shell Override ---
# [BHB Ch. 1] Docker builds layers using default generic '/bin/sh' execution loops. 
# Overriding the directive via SHELL configures the native '/bin/bash' engine with 
# execution flags ('-c' to execute string streams) for all downstream RUN steps, 
# ensuring advanced parameter parsing capabilities and script stability.
SHELL ["/bin/bash", "-c"]

# --- Block i: Default Workspace Workdir Partitioning ---
# [BHB Ch. 3] WORKDIR establishes the default absolute directory pathway inside the container. 
# When a shell instance initializes or repository source code is mounted, the terminal system 
# shifts operational context to '/workspaces' automatically.
WORKDIR /workspaces

# --- Block j: System-Wide Version Control Infrastructure ---
# [BHB Ch. 1] Configures systemic environment attributes across the filesystem via 'git config --system':
# safe.directory '*' -> Bypasses structural ownership UID mismatches inside Docker storage bridges.
# init.defaultBranch main -> Suppresses traditional default naming conflicts for tracking trees.
# pull.rebase false -> Enforces straightforward merging procedures on pipeline fetch sequences.
# git lfs install --system -> Implements architectural standard hooks for tracking large asset records.
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

 # --- Block k: Default Execution Shell Upgrade ---
# [BHB Ch. 1] Changes the root environment profile shell via 'chsh'. Replacing 
# '/bin/bash' with '/usr/bin/zsh' transforms interactive utility capabilities for the primary operator.
RUN chsh -s /usr/bin/zsh root

# --- Block l: Heredoc Multi-Line Appending & Custom Prompt Injection ---
# [BHB Ch. 1] Implementing a Here-Document construct ('cat >> filepath << 'EOF'') enables 
# multi-line string stream logging without pipeline disruptions. It safely appends structural 
# configuration variables into '/root/.zshrc'. The PROMPT definition dynamically layouts 
# color configurations, active root variables, path depth, and logical exit status flags (✔️/✘).
RUN cat >> /root/.zshrc <<'EOF'
PROMPT='%F{cyan}[Rafael-Patin]%f %F{yellow}%1~%f %(?.%F{green}✔️.%F{red}✘)%f %# '
EOF

# --- Block m: Default Runtime Execution Entrypoint ---
# [BHB Ch. 3] CMD mandates the structural lifecycle behavior when a container boots up, 
# unlike RUN commands which freeze modifications into immutable image layers. It serves as 
# the active fallback command, opening an interactive Zsh terminal prompt upon deployment.
CMD ["/usr/bin/zsh"]