#include <stdlib.h>
extern unsigned int v3 (signed char, signed short);
extern unsigned int (*v4) (signed char, signed short);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern unsigned char v7 (unsigned char, signed short, unsigned int, signed int);
extern unsigned char (*v8) (unsigned char, signed short, unsigned int, signed int);
signed int v9 (unsigned short, unsigned char);
signed int (*v10) (unsigned short, unsigned char) = v9;
extern void v11 (signed short, unsigned int);
extern void (*v12) (signed short, unsigned int);
extern unsigned short v13 (unsigned short, unsigned char);
extern unsigned short (*v14) (unsigned short, unsigned char);
extern unsigned short v15 (signed short, signed char);
extern unsigned short (*v16) (signed short, signed char);
void v17 (signed int);
void (*v18) (signed int) = v17;
extern signed short v19 (signed int, unsigned int, unsigned short);
extern signed short (*v20) (signed int, unsigned int, unsigned short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (signed int, unsigned char, unsigned int);
extern unsigned int (*v24) (signed int, unsigned char, unsigned int);
unsigned char v25 (unsigned short, signed char, unsigned char);
unsigned char (*v26) (unsigned short, signed char, unsigned char) = v25;
extern unsigned short v27 (signed char, signed short, signed int);
extern unsigned short (*v28) (signed char, signed short, signed int);
unsigned short v29 (signed int, unsigned char, signed short, unsigned int);
unsigned short (*v30) (signed int, unsigned char, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v98 = 4U;
unsigned short v97 = 5;
signed char v96 = 3;

unsigned short v29 (signed int v99, unsigned char v100, signed short v101, unsigned int v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed int v105 = 3;
signed char v104 = -4;
unsigned char v103 = 6;
trace++;
switch (trace)
{
case 2: 
return 1;
default: abort ();
}
}
}
}

unsigned char v25 (unsigned short v106, signed char v107, unsigned char v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -1;
signed int v110 = 3;
unsigned char v109 = 4;
trace++;
switch (trace)
{
case 4: 
return v109;
case 8: 
return v108;
case 10: 
return v109;
default: abort ();
}
}
}
}

void v17 (signed int v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 2;
unsigned int v114 = 7U;
unsigned int v113 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned short v116, unsigned char v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = 2;
unsigned char v119 = 3;
signed int v118 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
