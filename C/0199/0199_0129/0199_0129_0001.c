#include <stdlib.h>
signed char v3 (signed int);
signed char (*v4) (signed int) = v3;
extern unsigned int v5 (unsigned short, signed char);
extern unsigned int (*v6) (unsigned short, signed char);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern unsigned short v11 (signed int);
extern unsigned short (*v12) (signed int);
signed short v13 (unsigned int, signed short, unsigned short, unsigned short);
signed short (*v14) (unsigned int, signed short, unsigned short, unsigned short) = v13;
unsigned char v15 (unsigned int, unsigned char, signed int);
unsigned char (*v16) (unsigned int, unsigned char, signed int) = v15;
extern void v17 (void);
extern void (*v18) (void);
signed short v19 (signed short, signed char);
signed short (*v20) (signed short, signed char) = v19;
extern unsigned int v21 (unsigned int, signed short, signed short);
extern unsigned int (*v22) (unsigned int, signed short, signed short);
extern unsigned char v23 (signed char, signed int);
extern unsigned char (*v24) (signed char, signed int);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern unsigned int v27 (signed char, unsigned char, unsigned int, unsigned int);
extern unsigned int (*v28) (signed char, unsigned char, unsigned int, unsigned int);
extern signed short v29 (signed short, signed char);
extern signed short (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v54 = 4U;
unsigned char v53 = 0;
signed int v52 = 3;

signed short v19 (signed short v55, signed char v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed int v59 = -3;
unsigned int v58 = 2U;
unsigned int v57 = 2U;
trace++;
switch (trace)
{
case 9: 
return v55;
case 11: 
return -2;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned int v60, unsigned char v61, signed int v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 1;
signed short v64 = 0;
unsigned int v63 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned int v66, signed short v67, unsigned short v68, unsigned short v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = -2;
signed short v71 = 0;
signed short v70 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 5;
unsigned int v75 = 1U;
unsigned short v74 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
