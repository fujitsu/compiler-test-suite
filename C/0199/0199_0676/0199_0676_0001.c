#include <stdlib.h>
extern signed short v1 (signed short, signed char, signed short);
extern signed short (*v2) (signed short, signed char, signed short);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
signed char v7 (unsigned short, signed short, unsigned char, unsigned char);
signed char (*v8) (unsigned short, signed short, unsigned char, unsigned char) = v7;
signed short v9 (unsigned int);
signed short (*v10) (unsigned int) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern void v19 (signed char);
extern void (*v20) (signed char);
extern unsigned int v23 (unsigned char, unsigned short, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned short, unsigned int);
extern signed char v25 (unsigned short, unsigned int, signed char, unsigned short);
extern signed char (*v26) (unsigned short, unsigned int, signed char, unsigned short);
unsigned int v27 (signed char, signed char, signed int);
unsigned int (*v28) (signed char, signed char, signed int) = v27;
extern signed short v29 (signed char, unsigned short, signed int, signed char);
extern signed short (*v30) (signed char, unsigned short, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v49 = -3;
signed char v48 = -1;
unsigned char v47 = 5;

unsigned int v27 (signed char v50, signed char v51, signed int v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 0;
signed char v54 = -4;
unsigned char v53 = 3;
trace++;
switch (trace)
{
case 3: 
return 4U;
default: abort ();
}
}
}
}

signed short v9 (unsigned int v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 7;
signed short v58 = 1;
unsigned int v57 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned short v60, signed short v61, unsigned char v62, unsigned char v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = -1;
signed short v65 = 0;
signed int v64 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
