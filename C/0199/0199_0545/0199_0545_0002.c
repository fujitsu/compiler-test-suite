#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned int v3 (unsigned short, unsigned int);
extern unsigned int (*v4) (unsigned short, unsigned int);
extern signed short v5 (signed short, unsigned char, signed short);
extern signed short (*v6) (signed short, unsigned char, signed short);
extern unsigned int v7 (signed char, signed char, unsigned int, unsigned char);
extern unsigned int (*v8) (signed char, signed char, unsigned int, unsigned char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (signed char, signed char, unsigned short, unsigned char);
extern signed short (*v12) (signed char, signed char, unsigned short, unsigned char);
unsigned char v13 (signed char, unsigned int);
unsigned char (*v14) (signed char, unsigned int) = v13;
signed char v15 (signed short, signed int, unsigned short);
signed char (*v16) (signed short, signed int, unsigned short) = v15;
extern signed short v17 (signed int);
extern signed short (*v18) (signed int);
signed int v19 (unsigned short, signed char, signed int, signed int);
signed int (*v20) (unsigned short, signed char, signed int, signed int) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
unsigned char v23 (signed short, unsigned char, unsigned char, signed int);
unsigned char (*v24) (signed short, unsigned char, unsigned char, signed int) = v23;
extern unsigned char v25 (unsigned short, signed int, unsigned short);
extern unsigned char (*v26) (unsigned short, signed int, unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern void v29 (unsigned char, signed char);
extern void (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v91 = 4;
signed int v90 = 2;
unsigned int v89 = 2U;

unsigned char v23 (signed short v92, unsigned char v93, unsigned char v94, signed int v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 6;
signed short v97 = 1;
unsigned char v96 = 0;
trace++;
switch (trace)
{
case 10: 
return v98;
default: abort ();
}
}
}
}

signed int v19 (unsigned short v99, signed char v100, signed int v101, signed int v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed int v105 = 2;
unsigned short v104 = 4;
unsigned char v103 = 7;
trace++;
switch (trace)
{
case 3: 
return v101;
default: abort ();
}
}
}
}

signed char v15 (signed short v106, signed int v107, unsigned short v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -1;
signed short v110 = -2;
unsigned short v109 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed char v112, unsigned int v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = 0;
signed short v115 = -2;
unsigned int v114 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
