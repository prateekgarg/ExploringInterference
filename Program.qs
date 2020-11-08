namespace ExploringInterference {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Measurement;
    
    // Goal of this exercise is to make two states interfere and learn by examples
    // Reference: https://docs.microsoft.com/en-us/learn/modules/qsharp-explore-key-concepts-quantum-computing/5-explore-interference-qsharp

    // Part 1: applying H twice to a qubit will result in interference 
    @EntryPoint()
    operation TestInterference1() : Result {
        using (q = Qubit()) {
            Message(" ");
            Message("At the beginning the qubit is in teh state |0>");
            DumpMachine();
            H(q);
            Message(" ");
            Message("After applying H the qubit is in a uniform superposition.");
            DumpMachine();
            H(q);
            Message(" ");
            Message("If we apply H again, interference gives back the state to |0>");
            DumpMachine();
            Message(" ");
            Message("If we measure, we always obtain Zero");
            return MResetZ(q);
        }
    }
}
