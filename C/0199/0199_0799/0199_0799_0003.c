#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
unsigned char v7 (unsigned char, signed char, signed short, signed short);
unsigned char (*v8) (unsigned char, signed char, signed short, signed short) = v7;
extern signed short v9 (unsigned short, signed int, unsigned short, signed short);
extern signed short (*v10) (unsigned short, signed int, unsigned short, signed short);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern signed int v17 (void);
extern signed int (*v18) (void);
unsigned int v19 (signed char, signed int);
unsigned int (*v20) (signed char, signed int) = v19;
extern signed short v21 (signed char, unsigned short, unsigned int);
extern signed short (*v22) (signed char, unsigned short, unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
signed short v25 (unsigned short, signed short, unsigned int, signed short);
signed short (*v26) (unsigned short, signed short, unsigned int, signed short) = v25;
signed int v27 (signed int, signed int);
signed int (*v28) (signed int, signed int) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v96 = 2;
signed char v95 = 3;
signed short v94 = -2;

signed int v27 (signed int v97, signed int v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = 3;
signed char v100 = -2;
unsigned short v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (unsigned short v102, signed short v103, unsigned int v104, signed short v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 3U;
unsigned char v107 = 6;
signed short v106 = 0;
trace++;
switch (trace)
{
case 3: 
return v106;
case 5: 
return v103;
case 7: 
return v106;
default: abort ();
}
}
}
}

unsigned int v19 (signed char v109, signed int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 6;
unsigned char v112 = 3;
unsigned int v111 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v114, signed char v115, signed short v116, signed short v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 4;
signed char v119 = -1;
unsigned char v118 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
