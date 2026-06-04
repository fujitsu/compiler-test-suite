#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed char, signed char);
static signed int (*v2) (signed char, signed char) = v1;
extern void v3 (unsigned int, signed int, unsigned int);
extern void (*v4) (unsigned int, signed int, unsigned int);
extern unsigned int v5 (unsigned char, signed short, signed int, signed char);
extern unsigned int (*v6) (unsigned char, signed short, signed int, signed char);
extern signed short v7 (unsigned int, signed int, signed short, signed int);
extern signed short (*v8) (unsigned int, signed int, signed short, signed int);
extern unsigned char v9 (signed int, signed char, unsigned char);
extern unsigned char (*v10) (signed int, signed char, unsigned char);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern void v13 (signed int);
extern void (*v14) (signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
signed short v19 (unsigned short, signed short, unsigned char);
signed short (*v20) (unsigned short, signed short, unsigned char) = v19;
extern signed char v21 (signed char, unsigned int, unsigned short, signed short);
extern signed char (*v22) (signed char, unsigned int, unsigned short, signed short);
extern signed int v23 (signed int, unsigned int, signed char, signed int);
extern signed int (*v24) (signed int, unsigned int, signed char, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
unsigned short v27 (signed int, signed char, signed int);
unsigned short (*v28) (signed int, signed char, signed int) = v27;
extern signed char v29 (signed char, unsigned int, unsigned int, signed short);
extern signed char (*v30) (signed char, unsigned int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
signed int v32 = -1;
signed char v31 = 2;

unsigned short v27 (signed int v34, signed char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 4U;
signed char v38 = -1;
unsigned char v37 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned short v40, signed short v41, unsigned char v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 0;
signed short v44 = -2;
unsigned int v43 = 4U;
trace++;
switch (trace)
{
case 2: 
{
signed char v46;
unsigned int v47;
unsigned int v48;
signed short v49;
signed char v50;
v46 = 0 - -3;
v47 = 0U - v43;
v48 = v43 + 0U;
v49 = -4 + -1;
v50 = v29 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 4: 
{
signed char v51;
unsigned int v52;
unsigned int v53;
signed short v54;
signed char v55;
v51 = 3 - -4;
v52 = v43 + v43;
v53 = v43 + v43;
v54 = 0 - 0;
v55 = v29 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 6: 
return 2;
case 8: 
{
signed char v56;
unsigned int v57;
unsigned int v58;
signed short v59;
signed char v60;
v56 = -1 + 0;
v57 = v43 - 1U;
v58 = 4U - 3U;
v59 = v41 + v44;
v60 = v29 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 10: 
{
signed char v61;
unsigned int v62;
unsigned int v63;
signed short v64;
signed char v65;
v61 = -3 - -3;
v62 = v43 + v43;
v63 = v43 - v43;
v64 = v44 + v44;
v65 = v29 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed int v68 = -4;
signed int v67 = 2;
signed char v66 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (signed char v69, signed char v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 2U;
signed int v72 = 3;
signed short v71 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v74;
v74 = v25 ();
history[history_index++] = (int)v74;
}
break;
case 14: 
return -1;
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
signed char v77;
signed char v78;
signed int v79;
v77 = v31 + v31;
v78 = v31 - v31;
v79 = v1 (v77, v78);
history[history_index++] = (int)v79;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
