#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
unsigned char v3 (signed short);
unsigned char (*v4) (signed short) = v3;
extern void v5 (signed short, unsigned short, unsigned short);
extern void (*v6) (signed short, unsigned short, unsigned short);
extern void v7 (signed char, signed int, unsigned int);
extern void (*v8) (signed char, signed int, unsigned int);
signed short v9 (unsigned char, unsigned int, signed char, signed char);
signed short (*v10) (unsigned char, unsigned int, signed char, signed char) = v9;
extern signed int v11 (signed char);
extern signed int (*v12) (signed char);
extern unsigned char v13 (unsigned char, unsigned char, unsigned short);
extern unsigned char (*v14) (unsigned char, unsigned char, unsigned short);
extern unsigned short v15 (signed short, signed char, unsigned short, signed short);
extern unsigned short (*v16) (signed short, signed char, unsigned short, signed short);
extern signed char v17 (unsigned short, signed char, unsigned char);
extern signed char (*v18) (unsigned short, signed char, unsigned char);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed short v21 (signed char, unsigned short, signed char, unsigned int);
extern signed short (*v22) (signed char, unsigned short, signed char, unsigned int);
extern unsigned short v23 (signed short, signed int, unsigned short, signed char);
extern unsigned short (*v24) (signed short, signed int, unsigned short, signed char);
unsigned short v25 (unsigned char);
unsigned short (*v26) (unsigned char) = v25;
extern signed char v27 (signed short, signed int);
extern signed char (*v28) (signed short, signed int);
extern signed int v29 (unsigned char, unsigned int, unsigned int);
extern signed int (*v30) (unsigned char, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v100 = 1U;
signed char v99 = 1;
unsigned int v98 = 4U;

unsigned short v25 (unsigned char v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = 0;
signed int v103 = 1;
signed char v102 = -3;
trace++;
switch (trace)
{
case 4: 
return 1;
case 7: 
return 4;
default: abort ();
}
}
}
}

signed short v9 (unsigned char v105, unsigned int v106, signed char v107, signed char v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = 2;
unsigned int v110 = 7U;
unsigned char v109 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 3;
signed int v114 = -3;
unsigned char v113 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
