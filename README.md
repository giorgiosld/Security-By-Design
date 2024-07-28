# Security by Design - Master Degree LM-18 (2023/2024)

This repository contains the lab assignments and project work for the Security by Design course taken at the University of Camerino. The course is part of the Master Degree LM-18 program for the academic year 2023/2024.

## Directory Structure

The repository is organized into the following directories:

- `Channels/`: Contains Promela (PML) files and Spin verification outputs for various channel communication models.
- `MutualExclusionWithSemaphore`: Includes PML files and Spin verification outputs for mutual exclusion problems, such as Peterson's algorithm and traffic light control models.
- `Needham-Schroeder`: This directory contains the final project report and related files for modeling the Needham-Schroeder protocol using Spin and UPPAAL
- `Queue`: Contains models and verification outputs related to queue mechanisms, including automata diagrams and Promela files.
- `RailroadCrossing`: Models related to the railroad crossing problem, focusing on mutual exclusion and controller designs.
- `README.md`: Project documentation.
- `Distributed_System_Report_Saldana.pdf`: Report delivered for the exam.

### Needham-Schroeder
This directory contains the final project report and related files for modeling the Needham-Schroeder protocol using Spin and UPPAAL. The project involves identifying vulnerabilities such as Man-in-the-Middle (MITM) attacks and implementing fixes.

- `ns.pml`: Original Needham-Schroeder protocol model in Promela.
- `ns_fix.pml`: Fixed version of the protocol.
- `ns.xml` and `ns_fix.xml`: Corresponding UPPAAL models.
- `Security_by_Design_Report.pdf`: Detailed report on the project findings and solutions.


## License
This project is licensed under the MIT License - see the LICENSE file for details.

