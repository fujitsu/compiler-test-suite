#include <stdlib.h>
extern signed short v1 (unsigned char, signed char, signed int, signed short);
extern signed short (*v2) (unsigned char, signed char, signed int, signed short);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned int v5 (signed int, unsigned char);
extern unsigned int (*v6) (signed int, unsigned char);
extern unsigned char v7 (signed short, signed int);
extern unsigned char (*v8) (signed short, signed int);
signed int v9 (void);
signed int (*v10) (void) = v9;
signed short v11 (signed short, signed short, signed short);
signed short (*v12) (signed short, signed short, signed short) = v11;
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned int v15 (unsigned short, signed short, signed short);
extern unsigned int (*v16) (unsigned short, signed short, signed short);
extern void v17 (signed int, unsigned char);
extern void (*v18) (signed int, unsigned char);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern unsigned short v25 (signed short, unsigned int, unsigned char);
extern unsigned short (*v26) (signed short, unsigned int, unsigned char);
signed short v27 (signed char, unsigned int, unsigned int, unsigned short);
signed short (*v28) (signed char, unsigned int, unsigned int, unsigned short) = v27;
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v59 = -3;
unsigned short v58 = 0;
unsigned short v57 = 6;

unsigned int v29 (void)
{
{
for (;;) {
signed char v62 = -4;
signed int v61 = -3;
signed int v60 = -3;
trace++;
switch (trace)
{
case 2: 
return 5U;
case 4: 
return 4U;
case 6: 
return 2U;
case 8: 
return 3U;
case 10: 
return 4U;
default: abort ();
}
}
}
}

signed short v27 (signed char v63, unsigned int v64, unsigned int v65, unsigned short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 6U;
unsigned char v68 = 3;
unsigned short v67 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
signed short v72 = -1;
unsigned short v71 = 6;
signed short v70 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed short v73, signed short v74, signed short v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 5U;
signed char v77 = 3;
unsigned short v76 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
signed int v81 = -3;
signed int v80 = 0;
signed int v79 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
