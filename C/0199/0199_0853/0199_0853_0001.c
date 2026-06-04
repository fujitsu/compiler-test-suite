#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
extern unsigned short v3 (signed char, signed short, signed int, unsigned short);
extern unsigned short (*v4) (signed char, signed short, signed int, unsigned short);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
unsigned int v15 (signed short);
unsigned int (*v16) (signed short) = v15;
signed short v17 (signed short, signed int, unsigned int, unsigned char);
signed short (*v18) (signed short, signed int, unsigned int, unsigned char) = v17;
extern signed int v19 (signed int, unsigned int, signed int);
extern signed int (*v20) (signed int, unsigned int, signed int);
extern signed short v21 (unsigned short);
extern signed short (*v22) (unsigned short);
extern signed int v23 (unsigned char, unsigned int, signed short, unsigned short);
extern signed int (*v24) (unsigned char, unsigned int, signed short, unsigned short);
extern signed char v25 (unsigned char, unsigned char, signed short);
extern signed char (*v26) (unsigned char, unsigned char, signed short);
extern unsigned char v27 (unsigned short, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned int);
unsigned short v29 (unsigned char);
unsigned short (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v51 = 1U;
unsigned char v50 = 1;
unsigned short v49 = 5;

unsigned short v29 (unsigned char v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
unsigned char v55 = 4;
signed char v54 = -3;
signed char v53 = 1;
trace++;
switch (trace)
{
case 10: 
return 1;
default: abort ();
}
}
}
}

signed short v17 (signed short v56, signed int v57, unsigned int v58, unsigned char v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 5;
unsigned char v61 = 4;
unsigned short v60 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = -4;
unsigned int v65 = 1U;
signed short v64 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
