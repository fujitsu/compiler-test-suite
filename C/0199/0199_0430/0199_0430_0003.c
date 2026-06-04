#include <stdlib.h>
extern unsigned char v1 (signed int, signed int);
extern unsigned char (*v2) (signed int, signed int);
extern signed char v3 (signed int, signed char);
extern signed char (*v4) (signed int, signed char);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern signed int v7 (unsigned char, signed char, unsigned int);
extern signed int (*v8) (unsigned char, signed char, unsigned int);
extern unsigned short v9 (unsigned char, signed short, signed int, signed char);
extern unsigned short (*v10) (unsigned char, signed short, signed int, signed char);
signed char v11 (signed short, unsigned char, signed short);
signed char (*v12) (signed short, unsigned char, signed short) = v11;
extern unsigned char v13 (signed short);
extern unsigned char (*v14) (signed short);
signed char v15 (signed char, signed int, signed char);
signed char (*v16) (signed char, signed int, signed char) = v15;
extern signed int v17 (unsigned short, unsigned int, signed int);
extern signed int (*v18) (unsigned short, unsigned int, signed int);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (signed short);
extern signed char (*v24) (signed short);
void v25 (void);
void (*v26) (void) = v25;
extern unsigned short v27 (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned short (*v28) (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v102 = -3;
unsigned short v101 = 3;
signed short v100 = 2;

void v25 (void)
{
{
for (;;) {
unsigned char v105 = 5;
unsigned int v104 = 6U;
unsigned int v103 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed char v106, signed int v107, signed char v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = 1;
unsigned char v110 = 5;
signed char v109 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed short v112, unsigned char v113, signed short v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned int v117 = 2U;
unsigned int v116 = 2U;
signed int v115 = -1;
trace++;
switch (trace)
{
case 2: 
return 1;
case 4: 
return -4;
case 11: 
return -3;
default: abort ();
}
}
}
}
