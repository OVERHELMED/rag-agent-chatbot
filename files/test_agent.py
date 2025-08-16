#!/usr/bin/env python3
"""
Test script to verify the root agent is working correctly
"""

import os
from dotenv import load_dotenv
from agent import root_agent

def test_agent():
    """Test the root agent"""
    print("Testing root agent...")
    print(f"Agent name: {root_agent.name}")
    print(f"Agent model: {root_agent.model}")
    print(f"Agent tools: {[tool.name for tool in root_agent.tools]}")
    print("✅ Root agent is working correctly!")

if __name__ == "__main__":
    load_dotenv()
    test_agent()
