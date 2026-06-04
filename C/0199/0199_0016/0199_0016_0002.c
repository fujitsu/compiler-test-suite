#include <stdlib.h>
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern signed short v5 (signed int, signed short);
extern signed short (*v6) (signed int, signed short);
signed char v7 (unsigned char);
signed char (*v8) (unsigned char) = v7;
extern unsigned int v9 (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned int (*v10) (unsigned char, unsigned short, unsigned short, signed char);
signed int v11 (signed int, signed short);
signed int (*v12) (signed int, signed short) = v11;
extern unsigned short v13 (signed short, signed short, signed short, unsigned short);
extern unsigned short (*v14) (signed short, signed short, signed short, unsigned short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
signed int v17 (signed short, signed short, unsigned int, signed char);
signed int (*v18) (signed short, signed short, unsigned int, signed char) = v17;
extern unsigned int v19 (signed char);
extern unsigned int (*v20) (signed char);
signed char v21 (signed char, signed int, unsigned int, unsigned char);
signed char (*v22) (signed char, signed int, unsigned int, unsigned char) = v21;
extern signed char v23 (signed char, unsigned char, unsigned char, unsigned short);
extern signed char (*v24) (signed char, unsigned char, unsigned char, unsigned short);
extern signed int v25 (signed char, signed char, signed char, signed int);
extern signed int (*v26) (signed char, signed char, signed char, signed int);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v55 = 1U;
unsigned short v54 = 4;
unsigned int v53 = 7U;

signed char v21 (signed char v56, signed int v57, unsigned int v58, unsigned char v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 1U;
signed short v61 = -3;
signed int v60 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed short v63, signed short v64, unsigned int v65, signed char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 5U;
signed int v68 = -3;
signed int v67 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed int v70, signed short v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -1;
signed int v73 = -3;
signed int v72 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
signed int v78 = -3;
unsigned char v77 = 5;
unsigned char v76 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
