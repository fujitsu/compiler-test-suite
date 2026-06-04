#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
unsigned int v3 (unsigned int, unsigned short);
unsigned int (*v4) (unsigned int, unsigned short) = v3;
extern unsigned short v5 (unsigned short, signed int, signed char, signed short);
extern unsigned short (*v6) (unsigned short, signed int, signed char, signed short);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern void v9 (unsigned int, unsigned int);
extern void (*v10) (unsigned int, unsigned int);
extern unsigned short v11 (signed short, signed int, unsigned short, unsigned short);
extern unsigned short (*v12) (signed short, signed int, unsigned short, unsigned short);
extern signed char v13 (unsigned char, unsigned short, signed int);
extern signed char (*v14) (unsigned char, unsigned short, signed int);
extern unsigned short v15 (unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, signed int);
extern signed int v17 (unsigned int, unsigned int);
extern signed int (*v18) (unsigned int, unsigned int);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
signed int v23 (signed short, unsigned short);
signed int (*v24) (signed short, unsigned short) = v23;
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (void);
extern void (*v28) (void);
static unsigned short v29 (signed char, signed char, signed int, signed short);
static unsigned short (*v30) (signed char, signed char, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed int v32 = 3;
signed int v31 = -4;

static unsigned short v29 (signed char v34, signed char v35, signed int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 3;
unsigned short v39 = 6;
signed int v38 = -2;
trace++;
switch (trace)
{
case 3: 
return v39;
case 5: 
return 6;
case 7: 
return 1;
case 9: 
return v39;
case 11: 
return 2;
default: abort ();
}
}
}
}

signed int v23 (signed short v41, unsigned short v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 5;
unsigned short v44 = 5;
unsigned short v43 = 0;
trace++;
switch (trace)
{
case 2: 
{
signed char v46;
signed char v47;
signed int v48;
signed short v49;
unsigned short v50;
v46 = -3 + 2;
v47 = -1 - 3;
v48 = 1 + 0;
v49 = v41 + -4;
v50 = v29 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 4: 
{
signed char v51;
signed char v52;
signed int v53;
signed short v54;
unsigned short v55;
v51 = -4 - 1;
v52 = 3 - -2;
v53 = 3 - 1;
v54 = -3 - 3;
v55 = v29 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 6: 
{
signed char v56;
signed char v57;
signed int v58;
signed short v59;
unsigned short v60;
v56 = 0 - -1;
v57 = 1 - 3;
v58 = 0 - 1;
v59 = v41 + v41;
v60 = v29 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 8: 
{
signed char v61;
signed char v62;
signed int v63;
signed short v64;
unsigned short v65;
v61 = 1 + 2;
v62 = 2 + 3;
v63 = -2 + 2;
v64 = 3 - 3;
v65 = v29 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 10: 
{
signed char v66;
signed char v67;
signed int v68;
signed short v69;
unsigned short v70;
v66 = -3 + 0;
v67 = -1 + -1;
v68 = -4 + -2;
v69 = -2 + -4;
v70 = v29 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v71, unsigned short v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 0;
unsigned int v74 = 7U;
unsigned short v73 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
v1 ();
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
