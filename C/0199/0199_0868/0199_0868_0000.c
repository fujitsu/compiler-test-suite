#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
static unsigned int v3 (signed short, unsigned short);
static unsigned int (*v4) (signed short, unsigned short) = v3;
extern unsigned short v5 (signed char, signed short, unsigned char);
extern unsigned short (*v6) (signed char, signed short, unsigned char);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern signed int v9 (unsigned int, signed int, unsigned int);
extern signed int (*v10) (unsigned int, signed int, unsigned int);
extern unsigned short v11 (unsigned char, unsigned int);
extern unsigned short (*v12) (unsigned char, unsigned int);
signed int v13 (unsigned short, unsigned char, signed short);
signed int (*v14) (unsigned short, unsigned char, signed short) = v13;
extern unsigned short v15 (unsigned short, unsigned char, unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, unsigned char, unsigned short, signed int);
unsigned int v17 (unsigned short, signed short, unsigned char, unsigned char);
unsigned int (*v18) (unsigned short, signed short, unsigned char, unsigned char) = v17;
extern unsigned char v19 (unsigned short, unsigned short, unsigned char, unsigned char);
extern unsigned char (*v20) (unsigned short, unsigned short, unsigned char, unsigned char);
extern unsigned short v21 (unsigned char, signed short, signed int);
extern unsigned short (*v22) (unsigned char, signed short, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (signed short, signed int, unsigned int);
extern unsigned short (*v26) (signed short, signed int, unsigned int);
unsigned int v27 (signed short, signed char, unsigned int);
unsigned int (*v28) (signed short, signed char, unsigned int) = v27;
extern void v29 (unsigned char, signed int, unsigned int);
extern void (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed int v32 = -4;
unsigned short v31 = 1;

unsigned int v27 (signed short v34, signed char v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 3;
signed int v38 = 0;
unsigned short v37 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v40, signed short v41, unsigned char v42, unsigned char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = -2;
signed short v45 = -2;
signed short v44 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned short v47, unsigned char v48, signed short v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 6U;
signed short v51 = 0;
unsigned int v50 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
unsigned int v55 = 3U;
unsigned short v54 = 0;
signed short v53 = -3;
trace++;
switch (trace)
{
case 2: 
{
signed short v56;
unsigned short v57;
unsigned int v58;
v56 = -2 + -1;
v57 = v54 - v54;
v58 = v3 (v56, v57);
history[history_index++] = (int)v58;
}
break;
case 4: 
{
signed short v59;
unsigned short v60;
unsigned int v61;
v59 = 1 + 2;
v60 = v54 - v54;
v61 = v3 (v59, v60);
history[history_index++] = (int)v61;
}
break;
case 6: 
{
signed short v62;
unsigned short v63;
unsigned int v64;
v62 = v53 + -3;
v63 = v54 - v54;
v64 = v3 (v62, v63);
history[history_index++] = (int)v64;
}
break;
case 8: 
{
signed short v65;
unsigned short v66;
unsigned int v67;
v65 = v53 - v53;
v66 = 4 - 6;
v67 = v3 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 10: 
{
signed short v68;
unsigned short v69;
unsigned int v70;
v68 = 1 - v53;
v69 = v54 + v54;
v70 = v3 (v68, v69);
history[history_index++] = (int)v70;
}
break;
case 12: 
return v54;
case 14: 
return v54;
case 16: 
return v54;
case 18: 
return v54;
default: abort ();
}
}
}
}

static unsigned int v3 (signed short v71, unsigned short v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 5;
signed short v74 = 3;
unsigned int v73 = 0U;
trace++;
switch (trace)
{
case 3: 
return v73;
case 5: 
{
unsigned short v76;
v76 = v7 ();
history[history_index++] = (int)v76;
}
break;
case 7: 
{
unsigned short v77;
v77 = v7 ();
history[history_index++] = (int)v77;
}
break;
case 9: 
{
unsigned short v78;
v78 = v7 ();
history[history_index++] = (int)v78;
}
break;
case 11: 
return v73;
case 13: 
return 5U;
case 15: 
return v73;
case 17: 
return v73;
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
signed char v81;
signed short v82;
v81 = 2 - -4;
v82 = v1 (v81);
history[history_index++] = (int)v82;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
