#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed int, signed char, unsigned int);
extern signed int (*v4) (signed int, signed char, unsigned int);
extern signed int v5 (signed char, signed char, unsigned int);
extern signed int (*v6) (signed char, signed char, unsigned int);
extern signed char v7 (unsigned short);
extern signed char (*v8) (unsigned short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
unsigned int v13 (unsigned char, unsigned int);
unsigned int (*v14) (unsigned char, unsigned int) = v13;
unsigned int v15 (unsigned short, signed char, unsigned char);
unsigned int (*v16) (unsigned short, signed char, unsigned char) = v15;
signed short v17 (unsigned short, signed char);
signed short (*v18) (unsigned short, signed char) = v17;
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
signed char v21 (unsigned int, signed short, unsigned short);
signed char (*v22) (unsigned int, signed short, unsigned short) = v21;
extern signed char v23 (signed int);
extern signed char (*v24) (signed int);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern signed int v29 (signed int);
extern signed int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v70 = 7;
signed short v69 = -1;
signed char v68 = 3;

signed char v21 (unsigned int v71, signed short v72, unsigned short v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 2;
unsigned short v75 = 4;
signed int v74 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned short v77, signed char v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = -4;
unsigned int v80 = 1U;
unsigned char v79 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v82, signed char v83, unsigned char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = 2;
signed char v86 = -2;
unsigned char v85 = 1;
trace++;
switch (trace)
{
case 4: 
return 7U;
case 6: 
return 3U;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v88, unsigned int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 2;
signed short v91 = -2;
signed short v90 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
