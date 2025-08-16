# Import the agent module from the current directory
import sys
import os
sys.path.insert(0, os.path.dirname(__file__))

import agent

# Expose the root_agent for ADK web server
root_agent = agent.root_agent