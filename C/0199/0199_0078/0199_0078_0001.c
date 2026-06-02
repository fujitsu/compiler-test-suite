#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (unsigned char, signed int, signed short, signed char);
extern unsigned char (*v4) (unsigned char, signed int, signed short, signed char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
signed int v13 (unsigned char, unsigned short, unsigned char, unsigned int);
signed int (*v14) (unsigned char, unsigned short, unsigned char, unsigned int) = v13;
signed short v15 (signed char);
signed short (*v16) (signed char) = v15;
void v17 (signed short, signed short, signed char);
void (*v18) (signed short, signed short, signed char) = v17;
extern signed char v19 (signed short, signed int, signed char);
extern signed char (*v20) (signed short, signed int, signed char);
signed int v21 (unsigned char);
signed int (*v22) (unsigned char) = v21;
signed short v23 (unsigned short, signed char, signed short);
signed short (*v24) (unsigned short, signed char, signed short) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (unsigned short, signed char, unsigned short);
extern void (*v28) (unsigned short, signed char, unsigned short);
signed int v29 (unsigned short);
signed int (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v51 = 1;
unsigned int v50 = 5U;
signed int v49 = -4;

signed int v29 (unsigned short v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
signed char v55 = -1;
signed int v54 = -4;
signed char v53 = -2;
trace++;
switch (trace)
{
case 2: 
return v54;
case 4: 
return 3;
case 6: 
return v54;
case 8: 
return -2;
case 10: 
return v54;
default: abort ();
}
}
}
}

signed short v23 (unsigned short v56, signed char v57, signed short v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 3U;
signed int v60 = 1;
signed char v59 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned char v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 2;
unsigned short v64 = 2;
unsigned short v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed short v66, signed short v67, signed char v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned int v71 = 4U;
signed char v70 = -2;
unsigned int v69 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed char v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 0U;
signed short v74 = -3;
signed short v73 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned char v76, unsigned short v77, unsigned char v78, unsigned int v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = -3;
unsigned int v81 = 2U;
unsigned int v80 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
