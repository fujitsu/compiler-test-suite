#include <stdlib.h>
extern void v1 (signed int);
extern void (*v2) (signed int);
unsigned short v3 (signed short, unsigned char, signed int);
unsigned short (*v4) (signed short, unsigned char, signed int) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
signed short v7 (unsigned int);
signed short (*v8) (unsigned int) = v7;
extern signed short v9 (signed char, unsigned char);
extern signed short (*v10) (signed char, unsigned char);
extern unsigned char v11 (unsigned short, signed short, signed char);
extern unsigned char (*v12) (unsigned short, signed short, signed char);
extern signed char v13 (unsigned short);
extern signed char (*v14) (unsigned short);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v21 (signed short, unsigned int);
extern unsigned short (*v22) (signed short, unsigned int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
signed short v27 (unsigned short, signed short, signed short);
signed short (*v28) (unsigned short, signed short, signed short) = v27;
unsigned char v29 (unsigned short);
unsigned char (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v47 = 2;
signed char v46 = -3;
unsigned short v45 = 6;

unsigned char v29 (unsigned short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 6;
signed short v50 = -3;
unsigned int v49 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (unsigned short v52, signed short v53, signed short v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 1;
unsigned int v56 = 2U;
signed short v55 = -4;
trace++;
switch (trace)
{
case 8: 
return -4;
case 10: 
return v55;
default: abort ();
}
}
}
}

signed short v7 (unsigned int v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 5U;
unsigned int v60 = 0U;
unsigned short v59 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed short v62, unsigned char v63, signed int v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = -3;
signed char v66 = -4;
signed char v65 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
