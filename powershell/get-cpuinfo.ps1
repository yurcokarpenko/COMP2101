function get-cpuinfo {
>> "Manufacturer :";
>> (get-ciminstance cim_processor).manufacturer;
>>
>> "Name :";
>> (get-ciminstance cim_processor).Name;
>>
>> "Current Speed :"
>> (get-ciminstance cim_processor).currentclockspeed;
>>
>> "Maximum Clock Speed :";
>> (get-ciminstance cim_processor).maxclockspeed;
>>
>> "Number of Cores for Each Proccesor in This System :"
>> (get-ciminstance cim_processor).numberofcores;
>> }