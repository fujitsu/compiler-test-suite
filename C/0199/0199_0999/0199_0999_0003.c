#include <stdlib.h>
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed char v5 (unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, unsigned char);
extern signed short v7 (signed short, unsigned int, unsigned short);
extern signed short (*v8) (signed short, unsigned int, unsigned short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern void v15 (unsigned char, signed char);
extern void (*v16) (unsigned char, signed char);
void v17 (unsigned int, unsigned char, unsigned short);
void (*v18) (unsigned int, unsigned char, unsigned short) = v17;
extern signed short v19 (signed short, signed short, signed char);
extern signed short (*v20) (signed short, signed short, signed char);
extern unsigned char v23 (unsigned int, signed short, unsigned char, signed short);
extern unsigned char (*v24) (unsigned int, signed short, unsigned char, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
signed char v29 (unsigned short);
signed char (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v102 = 6;
signed short v101 = 2;
unsigned int v100 = 5U;

signed char v29 (unsigned short v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 4U;
signed int v105 = 2;
signed char v104 = 3;
trace++;
switch (trace)
{
case 4: 
return -1;
default: abort ();
}
}
}
}

void v17 (unsigned int v107, unsigned char v108, unsigned short v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 4U;
unsigned char v111 = 0;
unsigned int v110 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
unsigned short v115 = 3;
unsigned char v114 = 2;
unsigned char v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
