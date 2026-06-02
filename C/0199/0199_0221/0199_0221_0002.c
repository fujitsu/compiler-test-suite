#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed char v3 (signed char, signed short);
extern signed char (*v4) (signed char, signed short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
void v9 (unsigned short);
void (*v10) (unsigned short) = v9;
extern signed short v11 (signed int, signed int, signed char, signed char);
extern signed short (*v12) (signed int, signed int, signed char, signed char);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed int v17 (signed int, signed char);
extern signed int (*v18) (signed int, signed char);
extern signed short v19 (signed char, signed short, unsigned int);
extern signed short (*v20) (signed char, signed short, unsigned int);
extern signed char v21 (unsigned char, unsigned short, signed int);
extern signed char (*v22) (unsigned char, unsigned short, signed int);
extern unsigned short v23 (unsigned short, signed short);
extern unsigned short (*v24) (unsigned short, signed short);
unsigned int v25 (signed int, signed short, signed short, signed short);
unsigned int (*v26) (signed int, signed short, signed short, signed short) = v25;
extern unsigned char v27 (signed int, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v28) (signed int, unsigned short, unsigned short, unsigned short);
extern signed char v29 (signed char, signed char, unsigned char, signed char);
extern signed char (*v30) (signed char, signed char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v67 = 3;
signed short v66 = 1;
signed char v65 = 3;

unsigned int v25 (signed int v68, signed short v69, signed short v70, signed short v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 5;
unsigned int v73 = 5U;
signed short v72 = -1;
trace++;
switch (trace)
{
case 4: 
return 0U;
case 6: 
return 6U;
case 8: 
return v73;
case 11: 
return 0U;
default: abort ();
}
}
}
}

void v9 (unsigned short v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned char v78 = 5;
unsigned char v77 = 1;
unsigned short v76 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
